// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_blocking_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScreenBlockingState extends ScreenBlockingState {
  @override
  final bool isScreenBlockingActive;
  @override
  final bool isTimerBlocking;
  @override
  final bool isAppActive;
  @override
  final DateTime? pausedDatetime;

  factory _$ScreenBlockingState(
          [void Function(ScreenBlockingStateBuilder)? updates]) =>
      (new ScreenBlockingStateBuilder()..update(updates))._build();

  _$ScreenBlockingState._(
      {required this.isScreenBlockingActive,
      required this.isTimerBlocking,
      required this.isAppActive,
      this.pausedDatetime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isScreenBlockingActive,
        r'ScreenBlockingState', 'isScreenBlockingActive');
    BuiltValueNullFieldError.checkNotNull(
        isTimerBlocking, r'ScreenBlockingState', 'isTimerBlocking');
    BuiltValueNullFieldError.checkNotNull(
        isAppActive, r'ScreenBlockingState', 'isAppActive');
  }

  @override
  ScreenBlockingState rebuild(
          void Function(ScreenBlockingStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScreenBlockingStateBuilder toBuilder() =>
      new ScreenBlockingStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScreenBlockingState &&
        isScreenBlockingActive == other.isScreenBlockingActive &&
        isTimerBlocking == other.isTimerBlocking &&
        isAppActive == other.isAppActive &&
        pausedDatetime == other.pausedDatetime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isScreenBlockingActive.hashCode);
    _$hash = $jc(_$hash, isTimerBlocking.hashCode);
    _$hash = $jc(_$hash, isAppActive.hashCode);
    _$hash = $jc(_$hash, pausedDatetime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScreenBlockingState')
          ..add('isScreenBlockingActive', isScreenBlockingActive)
          ..add('isTimerBlocking', isTimerBlocking)
          ..add('isAppActive', isAppActive)
          ..add('pausedDatetime', pausedDatetime))
        .toString();
  }
}

class ScreenBlockingStateBuilder
    implements Builder<ScreenBlockingState, ScreenBlockingStateBuilder> {
  _$ScreenBlockingState? _$v;

  bool? _isScreenBlockingActive;
  bool? get isScreenBlockingActive => _$this._isScreenBlockingActive;
  set isScreenBlockingActive(bool? isScreenBlockingActive) =>
      _$this._isScreenBlockingActive = isScreenBlockingActive;

  bool? _isTimerBlocking;
  bool? get isTimerBlocking => _$this._isTimerBlocking;
  set isTimerBlocking(bool? isTimerBlocking) =>
      _$this._isTimerBlocking = isTimerBlocking;

  bool? _isAppActive;
  bool? get isAppActive => _$this._isAppActive;
  set isAppActive(bool? isAppActive) => _$this._isAppActive = isAppActive;

  DateTime? _pausedDatetime;
  DateTime? get pausedDatetime => _$this._pausedDatetime;
  set pausedDatetime(DateTime? pausedDatetime) =>
      _$this._pausedDatetime = pausedDatetime;

  ScreenBlockingStateBuilder();

  ScreenBlockingStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isScreenBlockingActive = $v.isScreenBlockingActive;
      _isTimerBlocking = $v.isTimerBlocking;
      _isAppActive = $v.isAppActive;
      _pausedDatetime = $v.pausedDatetime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScreenBlockingState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScreenBlockingState;
  }

  @override
  void update(void Function(ScreenBlockingStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScreenBlockingState build() => _build();

  _$ScreenBlockingState _build() {
    final _$result = _$v ??
        new _$ScreenBlockingState._(
            isScreenBlockingActive: BuiltValueNullFieldError.checkNotNull(
                isScreenBlockingActive,
                r'ScreenBlockingState',
                'isScreenBlockingActive'),
            isTimerBlocking: BuiltValueNullFieldError.checkNotNull(
                isTimerBlocking, r'ScreenBlockingState', 'isTimerBlocking'),
            isAppActive: BuiltValueNullFieldError.checkNotNull(
                isAppActive, r'ScreenBlockingState', 'isAppActive'),
            pausedDatetime: pausedDatetime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
