import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class QuestionListMiddleware implements MiddlewareClass<AppState> {
  //final IQuestionListService questionListRepository;
  final IDialogService dialogService;
  final IPermissionService permissionService;

  QuestionListMiddleware({
    //required this.questionListRepository,
    required this.dialogService,
    required this.permissionService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    //var state = store.state.questionListState;
    //var questionListsstate = store.state.questionListsState;

    if (action is SaveQuestionListAction) {
      //await _saveQuestionList(action, state, store.dispatch);
    } else if (action is CreateQuestionListAction) {
      //await _createQuestionList(action, state, questionListsstate, store.dispatch);
    } else if (action is DeleteQuestionListAction) {
      //await _deleteQuestionList(action, store.dispatch);
    }
  }

  // Future<void> _saveQuestionList(SaveQuestionListAction action, QuestionListState state, Function(dynamic action) dispatch) async {
  //   return questionListRepository
  //       .updateQuestionList(state.questionListId!, state.text, state.questions.map((e) => e.text).toList(), state.orderRank)
  //       .before(() async => await _before(action, dispatch))
  //       .then(
  //         (value) => value.when<QuestionListDto>(
  //           (success) async => await _onSaveSuccess(action, success, dispatch),
  //           (error) async => await _onError(error, dispatch, action),
  //         ),
  //       )
  //       .catchError((e, trace) async => await _onException(e, trace, dispatch))
  //       .whenComplete(() async => await _onComplete(action, dispatch));
  // }

  // Future<void> _createQuestionList(CreateQuestionListAction action, QuestionListState state, QuestionListsState questionListsState, Function(dynamic action) dispatch) async {
  //   return questionListRepository
  //       .createQuestionList(state.text, state.questions.map((e) => e.text).toList(), questionListsState.questionLists.length)
  //       .before(() async => await _before(action, dispatch))
  //       .then(
  //         (value) => value.when<QuestionListDto>(
  //           (success) async => await _onCreateSuccess(action, success, dispatch),
  //           (error) async => await _onError(error, dispatch, action),
  //         ),
  //       )
  //       .catchError((e, trace) async => await _onException(e, trace, dispatch))
  //       .whenComplete(() async => await _onComplete(action, dispatch));
  // }

  // Future<void> _deleteQuestionList(DeleteQuestionListAction action, Function(dynamic action) dispatch) async {
  //   dispatch(
  //     dialogService.confirmQuestionListDeletingDialogAction(
  //       dispatch,
  //       deleteCommand: () => {
  //         questionListRepository.deleteQuestionList(action.questionListId).before(() async => await _before(action, dispatch)).then((value) {
  //           dispatch(QuestionListDeletedAction(questionListId: action.questionListId));
  //         }).catchError((e, trace) async => {

  //             })
  //       },
  //     ),
  //   );
  // }

  // Future<void> _before(
  //   action,
  //   Function(dynamic action) dispatch,
  // ) async {
  //   if (action is SaveQuestionListAction || action is CreateQuestionListAction) {
  //     dispatch(QuestionListSavingAction(isSaving: true));
  //   }
  // }

  // Future<void> _onSaveSuccess(
  //   action,
  //   SuccessResult<QuestionListDto> model,
  //   Function(dynamic action) dispatch,
  // ) async {
  //   if (model.data != null) {
  //     dispatch(QuestionListUpdatedAction(questionListId: model.data!.id, text: model.data!.text, questions: model.data!.questions, orderRank: model.data!.orderRank));
  //     dispatch(PopBackStackAction());
  //   }
  // }

  // Future<void> _onCreateSuccess(
  //   action,
  //   SuccessResult<QuestionListDto> model,
  //   Function(dynamic action) dispatch,
  // ) async {
  //   if (model.data != null) {
  //     dispatch(QuestionListCreatedAction(questionListId: model.data!.id, text: model.data!.text, questions: model.data!.questions, orderRank: model.data!.orderRank));
  //     dispatch(PopBackStackAction());
  //   }
  // }

  // Future<void> _onComplete(action, Function(dynamic action) dispatch) async {
  //   dispatch(QuestionListSavingAction(isSaving: false));
  // }

  // Future<void> _onError(
  //   ErrorResult<QuestionListDto> error,
  //   Function(dynamic action) dispatch,
  //   dynamic retryAction,
  // ) async {
  //   switch (error.code) {
  //     case HttpStatus.unauthorized:
  //       //dispatch(LogoutAction(null));
  //       break;
  //     case HttpStatus.forbidden:
  //       dispatch(dialogService.prepareNoAccessDialog(dispatch));
  //       break;
  //     case 999:
  //       dispatch(dialogService.prepareNoInternetDialogAction(dispatch, retryCommand: () {
  //         dispatch(retryAction);
  //       }));
  //       break;
  //     default:
  //       dispatch(dialogService.prepareSomethingWentWrongDialogAction(dispatch));
  //   }
  // }

  // Future<void> _onException(
  //   dynamic e,
  //   StackTrace trace,
  //   Function(dynamic action) dispatch,
  // ) async {
  //   dispatch(dialogService.prepareSomethingWentWrongDialogAction(dispatch));
  //   throw e;
  // }
}
