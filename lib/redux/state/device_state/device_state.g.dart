// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceState extends DeviceState {
  @override
  final DeviceType deviceType;
  @override
  final Size size;
  @override
  final DeviceWidthType deviceWidthType;

  factory _$DeviceState([void Function(DeviceStateBuilder)? updates]) =>
      (new DeviceStateBuilder()..update(updates))._build();

  _$DeviceState._(
      {required this.deviceType,
      required this.size,
      required this.deviceWidthType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceType, r'DeviceState', 'deviceType');
    BuiltValueNullFieldError.checkNotNull(size, r'DeviceState', 'size');
    BuiltValueNullFieldError.checkNotNull(
        deviceWidthType, r'DeviceState', 'deviceWidthType');
  }

  @override
  DeviceState rebuild(void Function(DeviceStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceStateBuilder toBuilder() => new DeviceStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceState &&
        deviceType == other.deviceType &&
        size == other.size &&
        deviceWidthType == other.deviceWidthType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, deviceWidthType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceState')
          ..add('deviceType', deviceType)
          ..add('size', size)
          ..add('deviceWidthType', deviceWidthType))
        .toString();
  }
}

class DeviceStateBuilder implements Builder<DeviceState, DeviceStateBuilder> {
  _$DeviceState? _$v;

  DeviceType? _deviceType;
  DeviceType? get deviceType => _$this._deviceType;
  set deviceType(DeviceType? deviceType) => _$this._deviceType = deviceType;

  Size? _size;
  Size? get size => _$this._size;
  set size(Size? size) => _$this._size = size;

  DeviceWidthType? _deviceWidthType;
  DeviceWidthType? get deviceWidthType => _$this._deviceWidthType;
  set deviceWidthType(DeviceWidthType? deviceWidthType) =>
      _$this._deviceWidthType = deviceWidthType;

  DeviceStateBuilder();

  DeviceStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceType = $v.deviceType;
      _size = $v.size;
      _deviceWidthType = $v.deviceWidthType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceState;
  }

  @override
  void update(void Function(DeviceStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceState build() => _build();

  _$DeviceState _build() {
    final _$result = _$v ??
        new _$DeviceState._(
            deviceType: BuiltValueNullFieldError.checkNotNull(
                deviceType, r'DeviceState', 'deviceType'),
            size: BuiltValueNullFieldError.checkNotNull(
                size, r'DeviceState', 'size'),
            deviceWidthType: BuiltValueNullFieldError.checkNotNull(
                deviceWidthType, r'DeviceState', 'deviceWidthType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
