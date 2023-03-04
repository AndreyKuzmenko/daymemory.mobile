import 'common_action.dart';

class OnBoardingNextPageAction implements ILoggingAction {
  final int index;
  const OnBoardingNextPageAction({required this.index});

  @override
  String toLogString() {
    return 'OnBoarding screen $index';
  }
}

class OnBoardingSkipAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'OnBoarding Skip Action';
  }
}

class OnBoardingGetStartedAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'OnBoarding Get Started Action';
  }
}

class CheckOnboardingAction implements ILoggingAction {
  final dynamic nextAction;

  CheckOnboardingAction(this.nextAction);

  @override
  String toLogString() {
    return 'Check Onboarding Action';
  }
}
