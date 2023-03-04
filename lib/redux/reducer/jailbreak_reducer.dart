import 'package:daymemory/redux/action/common_action.dart';
import 'package:daymemory/redux/state/jailbreak_type/jailbreak_type.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<JailbreakType> get jailBreakReducer {
  return combineReducers<JailbreakType>([
    TypedReducer(_jailbreakCheckAction),
  ]);
}

JailbreakType _jailbreakCheckAction(
  JailbreakType type,
  JailbreakChangedStatusAction action,
) {
  return action.jailbreakType;
}
