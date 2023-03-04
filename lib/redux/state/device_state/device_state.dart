import 'dart:ui';

import 'package:built_value/built_value.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';

part 'device_state.g.dart';

abstract class DeviceState implements Built<DeviceState, DeviceStateBuilder> {
  DeviceType get deviceType;

  Size get size;

  DeviceWidthType get deviceWidthType;

  DeviceState._();

  factory DeviceState([void Function(DeviceStateBuilder) updates]) = _$DeviceState;

  factory DeviceState.initial() => DeviceState(
        (b) => b
          ..deviceType = DeviceType.unknown
          ..size = Size.zero
          ..deviceWidthType = DeviceWidthType.unknown,
      );
}
