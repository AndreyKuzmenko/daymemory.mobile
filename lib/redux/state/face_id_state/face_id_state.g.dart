// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'face_id_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FaceIdState extends FaceIdState {
  @override
  final AvailableBiometrics availableBiometrics;

  factory _$FaceIdState([void Function(FaceIdStateBuilder)? updates]) =>
      (new FaceIdStateBuilder()..update(updates))._build();

  _$FaceIdState._({required this.availableBiometrics}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        availableBiometrics, r'FaceIdState', 'availableBiometrics');
  }

  @override
  FaceIdState rebuild(void Function(FaceIdStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaceIdStateBuilder toBuilder() => new FaceIdStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaceIdState &&
        availableBiometrics == other.availableBiometrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availableBiometrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FaceIdState')
          ..add('availableBiometrics', availableBiometrics))
        .toString();
  }
}

class FaceIdStateBuilder implements Builder<FaceIdState, FaceIdStateBuilder> {
  _$FaceIdState? _$v;

  AvailableBiometrics? _availableBiometrics;
  AvailableBiometrics? get availableBiometrics => _$this._availableBiometrics;
  set availableBiometrics(AvailableBiometrics? availableBiometrics) =>
      _$this._availableBiometrics = availableBiometrics;

  FaceIdStateBuilder();

  FaceIdStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availableBiometrics = $v.availableBiometrics;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaceIdState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FaceIdState;
  }

  @override
  void update(void Function(FaceIdStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FaceIdState build() => _build();

  _$FaceIdState _build() {
    final _$result = _$v ??
        new _$FaceIdState._(
            availableBiometrics: BuiltValueNullFieldError.checkNotNull(
                availableBiometrics, r'FaceIdState', 'availableBiometrics'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
