import 'package:daymemory/extensions/jwt_extension.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/dialog/dialog_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class TokenExtractorMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IDialogService dialogService;
  final ILoggingService loggingService;

  TokenExtractorMiddleware({
    required this.settingsService,
    required this.dialogService,
    required this.loggingService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is TokenExtractAction) {
      await _initLogging(store.dispatch, action.nextAction);
    }
  }

  Future<void> _initLogging(
    Function(dynamic) dispatch,
    dynamic nextAction,
  ) async {
    try {
      var settings = await settingsService.getSettings();
      final token = settings.accessToken;
      if (token?.isNotEmpty ?? false) {
        var userId = token!.getUserId();
        loggingService.setUserId(userId);
      }
      dispatch(nextAction);
    } catch (e) {
      loggingService.logError(e);
    }
  }
}
