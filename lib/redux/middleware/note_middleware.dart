import 'dart:io';
import 'dart:typed_data';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/state/note_state/note_state.dart';
import 'package:daymemory/redux/state/settings_state/settings_state.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/file_selector_service/photo_access_denied_exception.dart';
import 'package:daymemory/services/geolocator_service/geolocator_service.dart';
import 'package:daymemory/services/file_selector_service/file_selector_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
import 'package:daymemory/services/video_thumbnail_service/video_thumbnail_service.dart';
//import 'package:ffmpeg_kit_flutter/ffprobe_kit.dart';
//import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NoteMiddleware implements MiddlewareClass<AppState> {
  final INoteService noteService;
  final IDialogService dialogService;
  final IPermissionService permissionService;
  final IGeolocatorService geolocatorService;
  final IContextService contextService;
  final IFileSelectorService fileSelectorService;
  final IVideoThumbnailService videoThumbnailService;

  AppLocalizations? get _locale => contextService.locale;

  NoteMiddleware({
    required this.noteService,
    required this.dialogService,
    required this.permissionService,
    required this.contextService,
    required this.geolocatorService,
    required this.fileSelectorService,
    required this.videoThumbnailService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is SaveNoteAction) {
      await _saveNote(action, store.state, store.dispatch);
    } else if (action is CreateNoteAction) {
      await _createNote(action, store.state, store.dispatch);
    } else if (action is DeleteNoteAction) {
      await _deleteNote(action, store.dispatch);
    } else if (action is NoteSelectImagesAction) {
      await _selectImages(action, store.state.noteState, store);
    } else if (action is NoteSelectVideoAction) {
      await _selectVideo(action, store.state.noteState, store);
    } else if (action is NoteLoadLocationAction) {
      await _loadLocation(action, store.state.settingsState, store.dispatch);
    }
  }

  Future _saveNote(SaveNoteAction action, AppState state, Function(dynamic action) dispatch) async {
    dispatch(NoteSavingAction(isSaving: true));
    var result = await noteService.updateNote(
      state.noteState.noteId!,
      state.noteState.notebookId!,
      state.noteState.text!,
      state.noteState.date,
      DateTime.now().toUtc(),
      state.noteState.mediaFiles.toList(),
      state.noteState.location,
      true,
    );
    dispatch(NoteUpdatedAction(
      noteId: result.id,
      notebookId: result.notebookId,
      text: result.text,
      mediaFiles: result.mediaFiles,
      currentLocation: result.location,
      date: result.date,
      modifiedDate: result.modifiedDate,
    ));
    dispatch(LoadNotebooksAction());
    dispatch(NoteSavingAction(isSaving: false));
    dispatch(PopBackStackAction(key: RouteDirection.editNote));
  }

  Future _createNote(CreateNoteAction action, AppState state, Function(dynamic action) dispatch) async {
    dispatch(NoteSavingAction(isSaving: true));
    var result = await noteService.createNote(
      const Uuid().v4(),
      state.noteState.notebookId!,
      state.noteState.text!,
      state.noteState.date,
      DateTime.now().toUtc(),
      state.noteState.mediaFiles.toList(),
      state.noteState.location,
      true,
    );
    dispatch(NoteSavingAction(isSaving: false));

    dispatch(NoteCreatedAction(
      noteId: result.id,
      notebookId: result.notebookId,
      text: result.text,
      mediaFiles: result.mediaFiles,
      currentLocation: result.location,
      date: result.date,
      modifiedDate: result.modifiedDate,
    ));

    dispatch(LoadNotebooksAction());
    //dispatch(LoadNotesAction(tag: null, notebookId: state.selectedNotebookState.notebookId));
    dispatch(PopBackStackAction(key: RouteDirection.editNote));
  }

  Future<void> _deleteNote(DeleteNoteAction action, Function(dynamic action) dispatch) async {
    dispatch(
      dialogService.confirmDeletingDialogAction(
        dispatch,
        deleteCommand: () async {
          await noteService.markNoteAsDeleted(action.noteId);
          dispatch(NoteDeletedAction(noteId: action.noteId));
          dispatch(LoadNotebooksAction());
        },
        title: _locale!.note_delete_title,
        message: _locale!.note_delete_message,
      ),
    );
  }

  Future<void> _selectImages(NoteSelectImagesAction action, NoteState noteState, Store<AppState> store) async {
    List<String> files = List.empty();
    try {
      files = await fileSelectorService.selectImages();
    } on PhotoAccessDeniedException {
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.photo_library_no_access));
    }

    store.dispatch(DelayedAction(nextAction: AppStateAction(isAppActive: false), delay: 1000));

    var images = <FileDto>[];

    for (var element in files) {
      var id = const Uuid().v4();

      var file = File(element);
      var modifiedDate = await file.lastModified();
      Uint8List bytes = await file.readAsBytes();
      var decodedImage = await decodeImageFromList(bytes);

      var fileSize = await file.length();

      var imageDto = FileDto(
        id: id,
        name: file.path,
        filePath: file.path,
        //originalFilePath: file.path,
        //resizedFilePath: file.path,
        fileType: FileType.image,
        height: decodedImage.height,
        width: decodedImage.width,
        createdDate: modifiedDate,
        fileSize: fileSize,
      );
      images.add(imageDto);
      store.dispatch(NoteImageSelectedAction(image: imageDto));
    }

    // if (!noteState.isImageDateUsed) {
    //   dispatch(NoteImageDateActivatedAction());
    //   dispatch(
    //     dialogService.confirmDialogAction(
    //       dispatch,
    //       confirmCommand: () async {
    //         dispatch(NoteChangeDateAction(date: images[0].createdDate!));
    //       },
    //       title: _locale!.note_use_photo_datetime,
    //       message: DateFormat('dd.MM.yyyy').format(images[0].createdDate!.toLocal()),
    //     ),
    //   );
    // }
  }

  Future<void> _selectVideo(NoteSelectVideoAction action, NoteState noteState, Store<AppState> store) async {
    String? filePath;
    try {
      filePath = await fileSelectorService.selectVideo();
    } on PhotoAccessDeniedException {
      store.dispatch(dialogService.prepareSomethingWentWrongDialogAction(store.dispatch, errorMessage: _locale!.photo_library_no_access));
    }

    store.dispatch(DelayedAction(nextAction: AppStateAction(isAppActive: false), delay: 1000));

    if (filePath == null) {
      return;
    }
    var id = const Uuid().v4();

    var file = File(filePath);
    var modifiedDate = await file.lastModified();
    var fileSize = await file.length();
    // var directory1 = await getApplicationDocumentsDirectory();
    // var directory = directory1.path;
    // var extension = ".mp4";

    // var imagesDIrectory = Directory(p.join("$directory", "files"));
    // if (!await imagesDIrectory.exists()) {
    //   await imagesDIrectory.create();
    // }

    // var fileDirectoryPath = p.join("$directory", "files", "$id");
    // var fileDirectory = Directory(fileDirectoryPath);

    // if (!await fileDirectory.exists()) {
    //   await fileDirectory.create();
    // }

    // var destinationFileName = "file$extension";
    // var fileStoragePath = p.join(fileDirectoryPath, "$destinationFileName");

    // print(fileStoragePath);
    // await FFprobeKit.executeAsync(
    //   "-i '$filePath' c:a copy -s hd720 '$fileStoragePath'",
    //   (session) async {
    //     // CALLED WHEN SESSION IS EXECUTED
    //     final returnCode = await session.getReturnCode();

    //     if (ReturnCode.isSuccess(returnCode)) {
    //       // SUCCESS
    //       print("finished");
    //     } else if (ReturnCode.isCancel(returnCode)) {
    //       // CANCEL
    //       print("cancel");
    //     } else {
    //       // ERROR
    //       print("error");
    //     }
    //   },
    //   (log) {
    //     print(log.getMessage());
    //   },
    // );

    int width = 1024;
    int height = 768;
    final uint8list = await videoThumbnailService.makeThumbnail(filePath);
    if (uint8list != null) {
      var decodedImage = await decodeImageFromList(uint8list);
      width = decodedImage.width;
      height = decodedImage.height;
    }

    var fileDto = FileDto(
      id: id,
      name: file.path,
      filePath: file.path,
      //originalFilePath: file.path,
      //resizedFilePath: file.path,
      fileType: FileType.video,
      height: height,
      width: width,
      createdDate: modifiedDate,
      fileSize: fileSize,
    );

    store.dispatch(NoteVideoSelectedAction(file: fileDto));
  }

  Future _loadLocation(NoteLoadLocationAction action, SettingsState state, Function(dynamic action) dispatch) async {
    if (state.isLocationSavingEnabled && await geolocatorService.isLocationServiceEnabled()) {
      var location = await geolocatorService.loadLocation();
      if (location != null) {
        dispatch(NoteLocationLoadedAction(location: location));
      }
    }
  }
}
