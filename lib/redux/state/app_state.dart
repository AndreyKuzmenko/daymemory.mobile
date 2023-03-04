import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/redux/state/account_state/account_state.dart';
import 'package:daymemory/redux/state/answer_question_state/answer_question_state.dart';
import 'package:daymemory/redux/state/device_state/device_state.dart';
import 'package:daymemory/redux/state/edit_notebook_state/edit_notebook_state.dart';
import 'package:daymemory/redux/state/login_state/login_state.dart';
import 'package:daymemory/redux/state/note_image_gallery_state/note_image_gallery_state.dart';
import 'package:daymemory/redux/state/notebooks_state/notebooks_state.dart';
import 'package:daymemory/redux/state/reviews_state/reviews_state.dart';
import 'package:daymemory/redux/state/selected_notebook_state/selected_notebook_state.dart';
import 'package:daymemory/redux/state/tags_state/tags_state.dart';
import 'package:daymemory/redux/state/face_id_state/face_id_state.dart';
import 'package:daymemory/redux/state/note_state/note_state.dart';
import 'package:daymemory/redux/state/notes_state/notes_state.dart';
import 'package:daymemory/redux/state/settings_state/settings_state.dart';
import 'package:daymemory/redux/state/states.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  ScreenBlockingState get screenBlockingState;

  OnBoardingState get onBoardingState;

  DeviceState get deviceState;

  SideMenuState get sideMenuState;

  NotesState get notesState;

  NoteImageGalleryState get noteImageGalleryState;

  NotebooksState get notebooksState;

  EditNotebookState get editNotebookState;

  SelectedNotebookState get selectedNotebookState;

  ReviewsState get reviewsState;

  QuestionListsState get questionListsState;

  QuestionListState get questionListState;

  AnswerQuestionState get answerQuestionState;

  NoteState get noteState;

  TagsState get tagsState;

  CreatePinState get createPinState;

  EnterPinState get enterPinState;

  FaceIdState get faceIdState;

  SettingsState get settingsState;

  SyncState get syncState;

  LoginState get loginState;

  TabsState get tabsState;

  EditTagsState get editTagsState;

  AccountState get accountState;

  JailbreakType get jailbreakType;

  BuiltList<DialogState>? get dialogsState;

  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initial() => AppState((b) => b
    ..settingsState = SettingsState.initial().toBuilder()
    ..syncState = SyncState.initial().toBuilder()
    ..deviceState = DeviceState.initial().toBuilder()
    ..tabsState = TabsState.initial().toBuilder()
    ..onBoardingState = OnBoardingState.initial().toBuilder()
    ..sideMenuState = SideMenuState.initial().toBuilder()
    ..tagsState = TagsState.initial().toBuilder()
    ..editTagsState = EditTagsState.initial().toBuilder()
    ..questionListsState = QuestionListsState.initial().toBuilder()
    ..questionListState = QuestionListState.initial().toBuilder()
    ..answerQuestionState = AnswerQuestionState.initial().toBuilder()
    ..notesState = NotesState.initial().toBuilder()
    ..noteImageGalleryState = NoteImageGalleryState.initial().toBuilder()
    ..notebooksState = NotebooksState.initial().toBuilder()
    ..selectedNotebookState = SelectedNotebookState.initial().toBuilder()
    ..editNotebookState = EditNotebookState.initial().toBuilder()
    ..reviewsState = ReviewsState.initial().toBuilder()
    ..noteState = NoteState.initial().toBuilder()
    ..createPinState = CreatePinState.initial().toBuilder()
    ..enterPinState = EnterPinState.initial().toBuilder()
    ..faceIdState = FaceIdState.initial().toBuilder()
    ..loginState = LoginState.initial().toBuilder()
    ..accountState = AccountState.initial().toBuilder()
    ..jailbreakType = JailbreakType.unknown
    ..screenBlockingState = ScreenBlockingState.initial().toBuilder());
}
