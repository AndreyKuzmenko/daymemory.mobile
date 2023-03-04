// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pin_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePinState extends CreatePinState {
  @override
  final String enteredPin;
  @override
  final String confirmedPin;
  @override
  final bool isRetryPin;
  @override
  final int selectedEnteredIndicators;
  @override
  final int selectedConfirmedIndicators;

  factory _$CreatePinState([void Function(CreatePinStateBuilder)? updates]) =>
      (new CreatePinStateBuilder()..update(updates))._build();

  _$CreatePinState._(
      {required this.enteredPin,
      required this.confirmedPin,
      required this.isRetryPin,
      required this.selectedEnteredIndicators,
      required this.selectedConfirmedIndicators})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enteredPin, r'CreatePinState', 'enteredPin');
    BuiltValueNullFieldError.checkNotNull(
        confirmedPin, r'CreatePinState', 'confirmedPin');
    BuiltValueNullFieldError.checkNotNull(
        isRetryPin, r'CreatePinState', 'isRetryPin');
    BuiltValueNullFieldError.checkNotNull(selectedEnteredIndicators,
        r'CreatePinState', 'selectedEnteredIndicators');
    BuiltValueNullFieldError.checkNotNull(selectedConfirmedIndicators,
        r'CreatePinState', 'selectedConfirmedIndicators');
  }

  @override
  CreatePinState rebuild(void Function(CreatePinStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePinStateBuilder toBuilder() =>
      new CreatePinStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePinState &&
        enteredPin == other.enteredPin &&
        confirmedPin == other.confirmedPin &&
        isRetryPin == other.isRetryPin &&
        selectedEnteredIndicators == other.selectedEnteredIndicators &&
        selectedConfirmedIndicators == other.selectedConfirmedIndicators;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enteredPin.hashCode);
    _$hash = $jc(_$hash, confirmedPin.hashCode);
    _$hash = $jc(_$hash, isRetryPin.hashCode);
    _$hash = $jc(_$hash, selectedEnteredIndicators.hashCode);
    _$hash = $jc(_$hash, selectedConfirmedIndicators.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePinState')
          ..add('enteredPin', enteredPin)
          ..add('confirmedPin', confirmedPin)
          ..add('isRetryPin', isRetryPin)
          ..add('selectedEnteredIndicators', selectedEnteredIndicators)
          ..add('selectedConfirmedIndicators', selectedConfirmedIndicators))
        .toString();
  }
}

class CreatePinStateBuilder
    implements Builder<CreatePinState, CreatePinStateBuilder> {
  _$CreatePinState? _$v;

  String? _enteredPin;
  String? get enteredPin => _$this._enteredPin;
  set enteredPin(String? enteredPin) => _$this._enteredPin = enteredPin;

  String? _confirmedPin;
  String? get confirmedPin => _$this._confirmedPin;
  set confirmedPin(String? confirmedPin) => _$this._confirmedPin = confirmedPin;

  bool? _isRetryPin;
  bool? get isRetryPin => _$this._isRetryPin;
  set isRetryPin(bool? isRetryPin) => _$this._isRetryPin = isRetryPin;

  int? _selectedEnteredIndicators;
  int? get selectedEnteredIndicators => _$this._selectedEnteredIndicators;
  set selectedEnteredIndicators(int? selectedEnteredIndicators) =>
      _$this._selectedEnteredIndicators = selectedEnteredIndicators;

  int? _selectedConfirmedIndicators;
  int? get selectedConfirmedIndicators => _$this._selectedConfirmedIndicators;
  set selectedConfirmedIndicators(int? selectedConfirmedIndicators) =>
      _$this._selectedConfirmedIndicators = selectedConfirmedIndicators;

  CreatePinStateBuilder();

  CreatePinStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enteredPin = $v.enteredPin;
      _confirmedPin = $v.confirmedPin;
      _isRetryPin = $v.isRetryPin;
      _selectedEnteredIndicators = $v.selectedEnteredIndicators;
      _selectedConfirmedIndicators = $v.selectedConfirmedIndicators;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePinState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePinState;
  }

  @override
  void update(void Function(CreatePinStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePinState build() => _build();

  _$CreatePinState _build() {
    final _$result = _$v ??
        new _$CreatePinState._(
            enteredPin: BuiltValueNullFieldError.checkNotNull(
                enteredPin, r'CreatePinState', 'enteredPin'),
            confirmedPin: BuiltValueNullFieldError.checkNotNull(
                confirmedPin, r'CreatePinState', 'confirmedPin'),
            isRetryPin: BuiltValueNullFieldError.checkNotNull(
                isRetryPin, r'CreatePinState', 'isRetryPin'),
            selectedEnteredIndicators: BuiltValueNullFieldError.checkNotNull(
                selectedEnteredIndicators,
                r'CreatePinState',
                'selectedEnteredIndicators'),
            selectedConfirmedIndicators: BuiltValueNullFieldError.checkNotNull(
                selectedConfirmedIndicators,
                r'CreatePinState',
                'selectedConfirmedIndicators'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
