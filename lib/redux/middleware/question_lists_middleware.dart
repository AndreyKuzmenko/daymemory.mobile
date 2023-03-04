import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class QuestionListsMiddleware implements MiddlewareClass<AppState> {
  //final IQuestionListRepository questionListRepository;
  final IDialogService dialogService;
  final IPermissionService permissionService;

  QuestionListsMiddleware({
    //required this.questionListRepository,
    required this.dialogService,
    required this.permissionService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is QuestionListsFetchAction || action is QuestionListsRefreshAction) {
      //await _loadQuestionLists(action, store.dispatch);
    } else if (action is ReorderQuestionListsAction) {
      //await _reaoderQuestionLists(action, store.dispatch, store.state.questionListsState);
    }
  }

  // Future<void> _reaoderQuestionLists(ReorderQuestionListsAction action, Function(dynamic action) dispatch, QuestionListsState state) async {
  //   //var list = state.reorderQuestionList(action.start, action.current);
  //   return questionListRepository
  //       .updateQuestionListRanks(state.questionLists)
  //       .then((value) {

  //       })
  //       .catchError((e, trace) async => await _onException(e, trace, dispatch))
  //       .whenComplete(() async => await _onComplete(action, dispatch));
  // }

  // Future<void> _loadQuestionLists(action, Function(dynamic action) dispatch) async {
  //   return questionListRepository
  //       .fetchQuestionList()
  //       .before(() async => await _before(action, dispatch))
  //       .then(
  //         (value) => value.when<List<QuestionListDto>>(
  //           (success) async => await _onSuccess(action, success, dispatch),
  //           (error) async => await _onError(error, dispatch, action),
  //         ),
  //       )
  //       .catchError((e, trace) async => await _onException(e, trace, dispatch))
  //       .whenComplete(() async => await _onComplete(action, dispatch));
  // }

  // Future<void> _before(action, Function(dynamic action) dispatch) async {
  //   if (action is QuestionListsFetchAction) {
  //     dispatch(const QuestionListsIsLoadingAction(isLoading: true));
  //   }
  // }

  // Future<void> _onSuccess(action, SuccessResult<List<QuestionListDto>> model, Function(dynamic action) dispatch) async {
  //   if (model.data != null) {
  //     dispatch(QuestionListsLoadedAction(model.data!));
  //   }
  // }

  // Future<void> _onComplete(action, Function(dynamic action) dispatch) async {
  //   dispatch(const QuestionListsIsLoadingAction(isLoading: false));
  // }

  // Future<void> _onError(
  //   ErrorResult<List<QuestionListDto>> error,
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
