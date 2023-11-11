import 'dart:core';
import 'package:daymemory/common/exceptions/invalid_operation_exception.dart';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/services/storage/database/db_creator.dart';
import 'package:daymemory/services/storage/database/tables.dart';
import 'package:daymemory/services/storage/file-storage/file_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
import 'package:uuid/uuid.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class DbNoteService implements INoteService {
  IFileService fileService;
  IDbCreator dbCreator;

  DbNoteService({required this.fileService, required this.dbCreator});

  DbNoteService init() {
    return this;
  }

  Future<NoteDto> _convertFromNote(DmNote note) async {
    var result = NoteDto(
      id: note.id,
      notebookId: note.notebookId,
      date: note.date.toUtc(),
      isEncrypted: false,
      modifiedDate: note.modifiedDate.toUtc(),
      text: note.content,
      mediaFiles: await _getFilesForNote(note.id),
      location: note.locationId == null ? null : await _getLocation(note.locationId!),
      tags: await _getTagsForNote(note.id),
    );
    return result;
  }

  LocationDto _convertFromLocation(DmLocation location) {
    return LocationDto(
      address: location.address,
      latitude: location.latitude,
      longitude: location.longitude,
    );
  }

  Future<FileDto> _convertFromFile(DmFile file) async {
    return FileDto(
      id: file.id,
      name: file.fileName,
      fileType: FileType.values[file.fileType],
      height: file.height,
      fileSize: file.fileSize,
      width: file.width,
      filePath: await fileService.getFilePath(file.id, file.fileName, false),
      //originalFilePath: await fileService.getFilePath(file.id, file.fileName, false),
      //resizedFilePath: await fileService.getFilePath(file.id, file.fileName, false),
      createdDate: file.createdDate,
    );
  }

  Future<LocationDto?> _getLocation(String locationId) async {
    var location = await dbCreator.database.getLocationById(locationId);
    if (location != null) {
      return _convertFromLocation(location);
    }
    return null;
  }

  Future<List<FileDto>> _getFilesForNote(String noteId) async {
    var result = <FileDto>[];
    var files = await dbCreator.database.getFilesForNote(noteId);
    for (var file in files) {
      result.add(await _convertFromFile(file));
    }
    return result;
  }

  Future<List<String>> _getTagsForNote(String noteId) async {
    var tags = await dbCreator.database.getTagsForNote(noteId);
    return tags.map((e) => e.tagId).toList();
  }

  Future<String> _saveFileToStorage(String fileId, FileType fileType, String filePath, String name) async {
    if (fileType == FileType.image) {
      return await fileService.savePhotoFile(filePath, name, fileId);
    } else if (fileType == FileType.video) {
      return await fileService.saveVideoFile(filePath, name, fileId);
    }

    throw InvalidOperationException(message: "Invalid file type: $fileType");
  }

  Future _createFile(String noteId, FileDto file, int orderRank, DateTime createdDate) async {
    var newFile = DmFile(
      id: file.id,
      noteId: noteId,
      fileName: file.name,
      fileSize: file.fileSize ?? 0,
      fileType: file.fileType.index,
      width: file.width,
      height: file.height,
      orderRank: orderRank,
      createdDate: createdDate,
    );
    await dbCreator.database.insertFile(newFile);
  }

  Future _createNoteTag(String id, String noteId, String tagId, DateTime createdDate) async {
    var noteTag = DmNoteTag(
      id: id,
      noteId: noteId,
      tagId: tagId,
      createdDate: createdDate,
    );
    await dbCreator.database.insertNoteTag(noteTag);
  }

  Future<DmNote?> _getNoteById(String noteId) async {
    var note = await dbCreator.database.getNoteById(noteId);
    return note;
  }

  //--------------
  //Public methods
  //--------------
  @override
  Future<List<NoteDto>> fetchNewNotes() async {
    var notes = await dbCreator.database.fetchNewNotes();
    var result = <NoteDto>[];
    for (var note in notes) {
      var item = await _convertFromNote(note);
      result.add(item);
    }
    return result;
  }

  @override
  Future<List<NoteDto>> fetchModifiedNotes() async {
    var notes = await dbCreator.database.fetchModifiedNotes();
    var result = <NoteDto>[];
    for (var note in notes) {
      var item = await _convertFromNote(note);
      result.add(item);
    }
    return result;
  }

  @override
  Future<List<NoteDto>> fetchDeletedNotes() async {
    var notes = await dbCreator.database.fetchDeletedNotes();
    var result = <NoteDto>[];
    for (var note in notes) {
      var item = await _convertFromNote(note);
      result.add(item);
    }
    return result;
  }

  @override
  Future<NoteDto?> fetchNote(String noteId) async {
    var note = await dbCreator.database.getNoteById(noteId);

    if (note != null) {
      var item = await _convertFromNote(note);
      return item;
    }
    return null;
  }

  @override
  Future<List<NoteDto>> fetchNotesByDate(DateTime date) async {
    var notes = await dbCreator.database.getNotesByDate(date);
    var result = <NoteDto>[];
    for (var note in notes) {
      var item = await _convertFromNote(note);
      result.add(item);
    }
    return result;
  }

  @override
  Future<List<NoteDto>> fetchNotesByDayAndMonth(int day, int month) async {
    var notes = await dbCreator.database.getNotesByDayAndMonth(day, month);
    var result = <NoteDto>[];
    for (var note in notes) {
      var item = await _convertFromNote(note);
      result.add(item);
    }
    return result;
  }

  @override
  Future<List<NoteDto>> fetchNotes(int? lastItemDateTime, int pageSize, String? notebookId, SortingType sortingType) async {
    var notes = await dbCreator.database.getAllNotes(lastItemDateTime, pageSize, notebookId, sortingType);
    var result = <NoteDto>[];
    for (var note in notes) {
      var item = await _convertFromNote(note);
      result.add(item);
    }
    return result;
  }

  @override
  Future<NoteDto> createNote(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    DateTime createdDate,
    List<FileDto> files,
    List<String> tags,
    LocationDto? location,
    bool isNew,
  ) async {
    DmLocation? loc;

    //Save files first to that they are saved if there is an error
    for (var file in files) {
      file.name = await _saveFileToStorage(file.id, file.fileType, file.filePath, file.name);
    }

    if (location != null) {
      loc = DmLocation(
        id: const Uuid().v4(),
        address: location.address ?? "",
        latitude: location.latitude,
        longitude: location.longitude,
        createdDate: createdDate,
      );
      await dbCreator.database.insertLocation(loc);
    }
    var note = DmNote(
      id: noteId,
      notebookId: notebookId,
      content: text,
      createdDate: createdDate,
      modifiedDate: createdDate,
      date: date,
      isDeleted: false,
      isNew: isNew,
      isChanged: false,
      locationId: loc?.id,
    );

    await dbCreator.database.insertNote(note);
    int i = 0;
    for (var file in files) {
      await _createFile(note.id, file, i, createdDate);
    }

    for (var tag in tags) {
      await _createNoteTag(const Uuid().v4(), noteId, tag, DateTime.now().toUtc());
    }

    var result = await _convertFromNote(note);
    return result;
  }

  @override
  Future<NoteDto> updateNote(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    DateTime modifiedDate,
    List<FileDto> files,
    List<String> tags,
    LocationDto? location,
    bool isModified,
  ) async {
    var note = await _getNoteById(noteId);
    if (note == null) {
      throw Exception("Note is not found");
    }

    //Save files first to that they are saved if there is an error
    for (var file in files) {
      file.name = await _saveFileToStorage(file.id, file.fileType, file.filePath, file.name);
    }

    //TODO: Not location update is needed
    await dbCreator.database.updateNote(
      note.id,
      notebookId,
      text,
      date,
      modifiedDate,
      note.locationId,
      isModified,
    );

    //UPDATE IMAGES
    var prevFiles = await dbCreator.database.getFilesForNote(note.id);
    var deletedFiles = prevFiles.where((element) => !files.any((p) => p.id == element.id));

    for (var deleteFile in deletedFiles) {
      await fileService.deleteFile(deleteFile.id);
      await dbCreator.database.deleteFile(deleteFile.id);
    }

    int i = 0;
    for (var file in files) {
      var item = prevFiles.firstWhereOrNull((element) => element.id == file.id);
      if (item == null) {
        await _createFile(note.id, file, i, modifiedDate);
      } else {
        await dbCreator.database.updateFilesOrderRank(item.id, i);
      }
      i++;
    }

    //UPDATE TAGS
    var prevTags = await dbCreator.database.getTagsForNote(note.id);
    var deletedTags = prevTags.where((element) => !tags.any((p) => p == element.tagId));

    for (var deleteTag in deletedTags) {
      await dbCreator.database.deleteNoteTag(deleteTag.id);
    }

    for (var tag in tags) {
      var item = prevTags.firstWhereOrNull((element) => element.tagId == tag);
      if (item == null) {
        await _createNoteTag(const Uuid().v4(), noteId, tag, DateTime.now().toUtc());
      }
    }

    note = await _getNoteById(noteId);
    return await _convertFromNote(note!);
  }

  @override
  Future markNoteAsDeleted(String noteId) async {
    var note = await dbCreator.database.getNoteById(noteId);
    if (note != null) {
      if (note.isNew) {
        await deleteNote(note.id);
      } else {
        await dbCreator.database.markNoteAsDeleted(noteId);
      }
    }
  }

  @override
  Future markNoteAsChanged(String noteId) async {
    var note = await dbCreator.database.getNoteById(noteId);
    if (note != null) {
      await dbCreator.database.markNoteAsChanged(noteId);
    }
  }

  @override
  Future resetIsChangedFlag(String noteId, DateTime modifiedDate) async {
    var note = await dbCreator.database.getNoteById(noteId);
    if (note != null) {
      await dbCreator.database.resetIsChangedFlag(noteId, modifiedDate);
    }
  }

  @override
  Future<String> deleteNote(String noteId) async {
    var note = await dbCreator.database.getNoteById(noteId);
    if (note != null) {
      if (note.locationId != null) {
        await dbCreator.database.deleteLocation(note.locationId!);
      }
      var files = await dbCreator.database.getFilesForNote(note.id);
      for (var file in files) {
        await fileService.deleteFile(file.id);
        await dbCreator.database.deleteFile(file.id);
      }

      var tags = await dbCreator.database.getTagsForNote(note.id);
      for (var tag in tags) {
        await dbCreator.database.deleteTag(tag.id);
      }

      await dbCreator.database.deleteNote(noteId);
    }

    return noteId;
  }
}
