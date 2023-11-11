import 'package:daymemory/redux/action/onboarding_action.dart';
import 'package:daymemory/redux/state/onboarding_state/onboarding_state.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

Reducer<OnBoardingState> get onBoardingReducer {
  return combineReducers<OnBoardingState>([
    TypedReducer(_onBoardingNextPageAction).call,
    TypedReducer(_onBoardingGetStartedAction).call,
    TypedReducer(_onBoardingSkipAction).call,
  ]);
}

OnBoardingState _onBoardingNextPageAction(OnBoardingState state, OnBoardingNextPageAction action) {
  return state.rebuild(
    (b) => b..currentPage = action.index,
  );
}

OnBoardingState _onBoardingGetStartedAction(OnBoardingState state, OnBoardingGetStartedAction action) {
  return state.rebuild(
    (b) => b..currentPage = 0,
  );
}

OnBoardingState _onBoardingSkipAction(OnBoardingState state, OnBoardingSkipAction action) {
  return state.rebuild(
    (b) => b..currentPage = 0,
  );
}
