import 'package:built_collection/built_collection.dart';
import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/redux/state/dialog/dialog_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<BuiltList<DialogState>?> get dialogReducer {
  return combineReducers<BuiltList<DialogState>?>([
    TypedReducer(_showDialogAction).call,
    TypedReducer(_dialogDismissedAction).call,
  ]);
}

BuiltList<DialogState>? _showDialogAction(BuiltList<DialogState>? state, ShowInfoDialogAction action) {
  if (state == null) return BuiltList<DialogState>([action.dialog]);
  return state.rebuild((value) => value.add(action.dialog));
}

BuiltList<DialogState>? _dialogDismissedAction(BuiltList<DialogState>? state, InfoDialogDismissedAction action) {
  if (state == null || state.isEmpty || (state.length == 1)) return null;
  return state.rebuild((value) => value.removeAt(0));
}
