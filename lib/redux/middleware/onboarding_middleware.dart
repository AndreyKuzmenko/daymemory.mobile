import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class OnboardingMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;

  OnboardingMiddleware({
    required this.settingsService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is CheckOnboardingAction) {
      await _checkOnboarding(store.dispatch, action.nextAction);
    } else if (action is OnBoardingSkipAction || action is OnBoardingGetStartedAction) {
      await _hideOnboarding(store.dispatch);
    }
  }

  Future<void> _checkOnboarding(
    Function(dynamic) dispatch,
    dynamic action,
  ) async {
    var settings = await settingsService.getSettings();
    if (!settings.isFirstRun) {
      dispatch(action);
    } else {
      dispatch(NavigateToOnboardingAction());
    }
  }

  Future<void> _hideOnboarding(
    Function(dynamic) dispatch,
  ) async {
    var settings = await settingsService.getSettings();
    if (!settings.isFirstRun) {
      dispatch(PopBackStackAction());
    } else {
      settings.isFirstRun = false;
      await settingsService.setSettings(settings);

      dispatch(AppFirstInitializationAction());

      dispatch(initialInstruction);
    }
  }
}
