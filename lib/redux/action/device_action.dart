import 'package:daymemory/services/device_info_service/device_info_service.dart';

import 'common_action.dart';

class DeviceDataLoadedAction implements ILoggingAction {
  final DeviceType deviceType;

  DeviceDataLoadedAction({
    required this.deviceType,
  });

  @override
  String toLogString() {
    return 'Device Data Loaded Action';
  }
}
