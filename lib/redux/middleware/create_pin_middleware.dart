import 'package:daymemory/redux/action/create_pin_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_service/device_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class CreatePinMiddleware implements MiddlewareClass<AppState> {
  final ISettingsService settingsService;
  final IDeviceService deviceFeedbackService;

  CreatePinMiddleware({required this.settingsService, required this.deviceFeedbackService});

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is TypePinAction) {
      deviceFeedbackService.selectionClickFeedback();
    } else if (action is SavingPinAction) {
      await _savePin(store.dispatch, action.pinCode);
    } else if (action is RemovePinAction) {
      await _removePin(store.dispatch);
    }
  }

  Future<void> _savePin(
    Function(dynamic) dispatch,
    String pinCode,
  ) async {
    try {
      var settings = await settingsService.getSettings();
      settings.pinCode = pinCode;
      await settingsService.setSettings(settings);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> _removePin(
    Function(dynamic) dispatch,
  ) async {
    try {
      var settings = await settingsService.getSettings();
      settings.pinCode = "";
      await settingsService.setSettings(settings);
    } catch (e) {
      rethrow;
    }
  }
}
