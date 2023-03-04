import 'package:built_value/built_value.dart';

part 'onboarding_state.g.dart';

abstract class OnBoardingState
    implements Built<OnBoardingState, OnBoardingStateBuilder> {
  int get currentPage;

  OnBoardingState._();
  factory OnBoardingState([void Function(OnBoardingStateBuilder) updates]) =
      _$OnBoardingState;
  factory OnBoardingState.initial() => OnBoardingState(
        (b) => b..currentPage = 0,
      );
}
