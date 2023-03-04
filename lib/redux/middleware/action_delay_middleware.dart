import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class ActionDelayMiddleware implements MiddlewareClass<AppState> {
  const ActionDelayMiddleware();

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is DelayedAction) {
      await Future.delayed(Duration(milliseconds: action.delay), () {
        store.dispatch(action.nextAction);
      });
    }
  }
}
