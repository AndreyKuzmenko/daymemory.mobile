import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/system_action.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/clipboard_service/clipboard_service.dart';
import 'package:daymemory/services/device_service/device_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class SystemMiddleware implements MiddlewareClass<AppState> {
  final IDeviceService deviceFeedbackService;
  final IClipboardService clipboardService;

  SystemMiddleware({required this.deviceFeedbackService, required this.clipboardService});

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is MakeSystemClickAction) {
      deviceFeedbackService.selectionClickFeedback();
    } else if (action is CopyToClipboardAction) {
      await clipboardService.copy(action.text);
    }
  }
}
