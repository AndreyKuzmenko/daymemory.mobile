// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enter_pin_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnterPinState extends EnterPinState {
  @override
  final String enteredPin;
  @override
  final int selectedEnteredIndicators;
  @override
  final int pinEnterAttempts;
  @override
  final bool isRetry;

  factory _$EnterPinState([void Function(EnterPinStateBuilder)? updates]) =>
      (new EnterPinStateBuilder()..update(updates))._build();

  _$EnterPinState._(
      {required this.enteredPin,
      required this.selectedEnteredIndicators,
      required this.pinEnterAttempts,
      required this.isRetry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enteredPin, r'EnterPinState', 'enteredPin');
    BuiltValueNullFieldError.checkNotNull(selectedEnteredIndicators,
        r'EnterPinState', 'selectedEnteredIndicators');
    BuiltValueNullFieldError.checkNotNull(
        pinEnterAttempts, r'EnterPinState', 'pinEnterAttempts');
    BuiltValueNullFieldError.checkNotNull(isRetry, r'EnterPinState', 'isRetry');
  }

  @override
  EnterPinState rebuild(void Function(EnterPinStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnterPinStateBuilder toBuilder() => new EnterPinStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnterPinState &&
        enteredPin == other.enteredPin &&
        selectedEnteredIndicators == other.selectedEnteredIndicators &&
        pinEnterAttempts == other.pinEnterAttempts &&
        isRetry == other.isRetry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enteredPin.hashCode);
    _$hash = $jc(_$hash, selectedEnteredIndicators.hashCode);
    _$hash = $jc(_$hash, pinEnterAttempts.hashCode);
    _$hash = $jc(_$hash, isRetry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnterPinState')
          ..add('enteredPin', enteredPin)
          ..add('selectedEnteredIndicators', selectedEnteredIndicators)
          ..add('pinEnterAttempts', pinEnterAttempts)
          ..add('isRetry', isRetry))
        .toString();
  }
}

class EnterPinStateBuilder
    implements Builder<EnterPinState, EnterPinStateBuilder> {
  _$EnterPinState? _$v;

  String? _enteredPin;
  String? get enteredPin => _$this._enteredPin;
  set enteredPin(String? enteredPin) => _$this._enteredPin = enteredPin;

  int? _selectedEnteredIndicators;
  int? get selectedEnteredIndicators => _$this._selectedEnteredIndicators;
  set selectedEnteredIndicators(int? selectedEnteredIndicators) =>
      _$this._selectedEnteredIndicators = selectedEnteredIndicators;

  int? _pinEnterAttempts;
  int? get pinEnterAttempts => _$this._pinEnterAttempts;
  set pinEnterAttempts(int? pinEnterAttempts) =>
      _$this._pinEnterAttempts = pinEnterAttempts;

  bool? _isRetry;
  bool? get isRetry => _$this._isRetry;
  set isRetry(bool? isRetry) => _$this._isRetry = isRetry;

  EnterPinStateBuilder();

  EnterPinStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enteredPin = $v.enteredPin;
      _selectedEnteredIndicators = $v.selectedEnteredIndicators;
      _pinEnterAttempts = $v.pinEnterAttempts;
      _isRetry = $v.isRetry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnterPinState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnterPinState;
  }

  @override
  void update(void Function(EnterPinStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnterPinState build() => _build();

  _$EnterPinState _build() {
    final _$result = _$v ??
        new _$EnterPinState._(
            enteredPin: BuiltValueNullFieldError.checkNotNull(
                enteredPin, r'EnterPinState', 'enteredPin'),
            selectedEnteredIndicators: BuiltValueNullFieldError.checkNotNull(
                selectedEnteredIndicators,
                r'EnterPinState',
                'selectedEnteredIndicators'),
            pinEnterAttempts: BuiltValueNullFieldError.checkNotNull(
                pinEnterAttempts, r'EnterPinState', 'pinEnterAttempts'),
            isRetry: BuiltValueNullFieldError.checkNotNull(
                isRetry, r'EnterPinState', 'isRetry'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
