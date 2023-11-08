// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_auth_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BiometricAuthState extends BiometricAuthState {
  @override
  final AvailableBiometrics availableBiometrics;

  factory _$BiometricAuthState(
          [void Function(BiometricAuthStateBuilder)? updates]) =>
      (new BiometricAuthStateBuilder()..update(updates))._build();

  _$BiometricAuthState._({required this.availableBiometrics}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        availableBiometrics, r'BiometricAuthState', 'availableBiometrics');
  }

  @override
  BiometricAuthState rebuild(
          void Function(BiometricAuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BiometricAuthStateBuilder toBuilder() =>
      new BiometricAuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BiometricAuthState &&
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
    return (newBuiltValueToStringHelper(r'BiometricAuthState')
          ..add('availableBiometrics', availableBiometrics))
        .toString();
  }
}

class BiometricAuthStateBuilder
    implements Builder<BiometricAuthState, BiometricAuthStateBuilder> {
  _$BiometricAuthState? _$v;

  AvailableBiometrics? _availableBiometrics;
  AvailableBiometrics? get availableBiometrics => _$this._availableBiometrics;
  set availableBiometrics(AvailableBiometrics? availableBiometrics) =>
      _$this._availableBiometrics = availableBiometrics;

  BiometricAuthStateBuilder();

  BiometricAuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availableBiometrics = $v.availableBiometrics;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BiometricAuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BiometricAuthState;
  }

  @override
  void update(void Function(BiometricAuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BiometricAuthState build() => _build();

  _$BiometricAuthState _build() {
    final _$result = _$v ??
        new _$BiometricAuthState._(
            availableBiometrics: BuiltValueNullFieldError.checkNotNull(
                availableBiometrics,
                r'BiometricAuthState',
                'availableBiometrics'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
