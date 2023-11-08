// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enter_pin_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnterPinViewModel extends EnterPinViewModel {
  @override
  final int selectedEnteredIndicators;
  @override
  final String enteredPin;
  @override
  final String enteredPinTitle;
  @override
  final TypedFunctionHolder<String> typingCommand;
  @override
  final FunctionHolder clearCommand;
  @override
  final FunctionHolder forgotPinCommand;
  @override
  final FunctionHolder biometricCommand;
  @override
  final bool isRetry;
  @override
  final bool isBiometricsEnabled;

  factory _$EnterPinViewModel(
          [void Function(EnterPinViewModelBuilder)? updates]) =>
      (new EnterPinViewModelBuilder()..update(updates))._build();

  _$EnterPinViewModel._(
      {required this.selectedEnteredIndicators,
      required this.enteredPin,
      required this.enteredPinTitle,
      required this.typingCommand,
      required this.clearCommand,
      required this.forgotPinCommand,
      required this.biometricCommand,
      required this.isRetry,
      required this.isBiometricsEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(selectedEnteredIndicators,
        r'EnterPinViewModel', 'selectedEnteredIndicators');
    BuiltValueNullFieldError.checkNotNull(
        enteredPin, r'EnterPinViewModel', 'enteredPin');
    BuiltValueNullFieldError.checkNotNull(
        enteredPinTitle, r'EnterPinViewModel', 'enteredPinTitle');
    BuiltValueNullFieldError.checkNotNull(
        typingCommand, r'EnterPinViewModel', 'typingCommand');
    BuiltValueNullFieldError.checkNotNull(
        clearCommand, r'EnterPinViewModel', 'clearCommand');
    BuiltValueNullFieldError.checkNotNull(
        forgotPinCommand, r'EnterPinViewModel', 'forgotPinCommand');
    BuiltValueNullFieldError.checkNotNull(
        biometricCommand, r'EnterPinViewModel', 'biometricCommand');
    BuiltValueNullFieldError.checkNotNull(
        isRetry, r'EnterPinViewModel', 'isRetry');
    BuiltValueNullFieldError.checkNotNull(
        isBiometricsEnabled, r'EnterPinViewModel', 'isBiometricsEnabled');
  }

  @override
  EnterPinViewModel rebuild(void Function(EnterPinViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnterPinViewModelBuilder toBuilder() =>
      new EnterPinViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnterPinViewModel &&
        selectedEnteredIndicators == other.selectedEnteredIndicators &&
        enteredPin == other.enteredPin &&
        enteredPinTitle == other.enteredPinTitle &&
        typingCommand == other.typingCommand &&
        clearCommand == other.clearCommand &&
        forgotPinCommand == other.forgotPinCommand &&
        biometricCommand == other.biometricCommand &&
        isRetry == other.isRetry &&
        isBiometricsEnabled == other.isBiometricsEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedEnteredIndicators.hashCode);
    _$hash = $jc(_$hash, enteredPin.hashCode);
    _$hash = $jc(_$hash, enteredPinTitle.hashCode);
    _$hash = $jc(_$hash, typingCommand.hashCode);
    _$hash = $jc(_$hash, clearCommand.hashCode);
    _$hash = $jc(_$hash, forgotPinCommand.hashCode);
    _$hash = $jc(_$hash, biometricCommand.hashCode);
    _$hash = $jc(_$hash, isRetry.hashCode);
    _$hash = $jc(_$hash, isBiometricsEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnterPinViewModel')
          ..add('selectedEnteredIndicators', selectedEnteredIndicators)
          ..add('enteredPin', enteredPin)
          ..add('enteredPinTitle', enteredPinTitle)
          ..add('typingCommand', typingCommand)
          ..add('clearCommand', clearCommand)
          ..add('forgotPinCommand', forgotPinCommand)
          ..add('biometricCommand', biometricCommand)
          ..add('isRetry', isRetry)
          ..add('isBiometricsEnabled', isBiometricsEnabled))
        .toString();
  }
}

class EnterPinViewModelBuilder
    implements Builder<EnterPinViewModel, EnterPinViewModelBuilder> {
  _$EnterPinViewModel? _$v;

  int? _selectedEnteredIndicators;
  int? get selectedEnteredIndicators => _$this._selectedEnteredIndicators;
  set selectedEnteredIndicators(int? selectedEnteredIndicators) =>
      _$this._selectedEnteredIndicators = selectedEnteredIndicators;

  String? _enteredPin;
  String? get enteredPin => _$this._enteredPin;
  set enteredPin(String? enteredPin) => _$this._enteredPin = enteredPin;

  String? _enteredPinTitle;
  String? get enteredPinTitle => _$this._enteredPinTitle;
  set enteredPinTitle(String? enteredPinTitle) =>
      _$this._enteredPinTitle = enteredPinTitle;

  TypedFunctionHolder<String>? _typingCommand;
  TypedFunctionHolder<String>? get typingCommand => _$this._typingCommand;
  set typingCommand(TypedFunctionHolder<String>? typingCommand) =>
      _$this._typingCommand = typingCommand;

  FunctionHolder? _clearCommand;
  FunctionHolder? get clearCommand => _$this._clearCommand;
  set clearCommand(FunctionHolder? clearCommand) =>
      _$this._clearCommand = clearCommand;

  FunctionHolder? _forgotPinCommand;
  FunctionHolder? get forgotPinCommand => _$this._forgotPinCommand;
  set forgotPinCommand(FunctionHolder? forgotPinCommand) =>
      _$this._forgotPinCommand = forgotPinCommand;

  FunctionHolder? _biometricCommand;
  FunctionHolder? get biometricCommand => _$this._biometricCommand;
  set biometricCommand(FunctionHolder? biometricCommand) =>
      _$this._biometricCommand = biometricCommand;

  bool? _isRetry;
  bool? get isRetry => _$this._isRetry;
  set isRetry(bool? isRetry) => _$this._isRetry = isRetry;

  bool? _isBiometricsEnabled;
  bool? get isBiometricsEnabled => _$this._isBiometricsEnabled;
  set isBiometricsEnabled(bool? isBiometricsEnabled) =>
      _$this._isBiometricsEnabled = isBiometricsEnabled;

  EnterPinViewModelBuilder();

  EnterPinViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedEnteredIndicators = $v.selectedEnteredIndicators;
      _enteredPin = $v.enteredPin;
      _enteredPinTitle = $v.enteredPinTitle;
      _typingCommand = $v.typingCommand;
      _clearCommand = $v.clearCommand;
      _forgotPinCommand = $v.forgotPinCommand;
      _biometricCommand = $v.biometricCommand;
      _isRetry = $v.isRetry;
      _isBiometricsEnabled = $v.isBiometricsEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnterPinViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnterPinViewModel;
  }

  @override
  void update(void Function(EnterPinViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnterPinViewModel build() => _build();

  _$EnterPinViewModel _build() {
    final _$result = _$v ??
        new _$EnterPinViewModel._(
            selectedEnteredIndicators: BuiltValueNullFieldError.checkNotNull(
                selectedEnteredIndicators,
                r'EnterPinViewModel',
                'selectedEnteredIndicators'),
            enteredPin: BuiltValueNullFieldError.checkNotNull(
                enteredPin, r'EnterPinViewModel', 'enteredPin'),
            enteredPinTitle: BuiltValueNullFieldError.checkNotNull(
                enteredPinTitle, r'EnterPinViewModel', 'enteredPinTitle'),
            typingCommand: BuiltValueNullFieldError.checkNotNull(
                typingCommand, r'EnterPinViewModel', 'typingCommand'),
            clearCommand: BuiltValueNullFieldError.checkNotNull(
                clearCommand, r'EnterPinViewModel', 'clearCommand'),
            forgotPinCommand: BuiltValueNullFieldError.checkNotNull(
                forgotPinCommand, r'EnterPinViewModel', 'forgotPinCommand'),
            biometricCommand: BuiltValueNullFieldError.checkNotNull(
                biometricCommand, r'EnterPinViewModel', 'biometricCommand'),
            isRetry: BuiltValueNullFieldError.checkNotNull(isRetry, r'EnterPinViewModel', 'isRetry'),
            isBiometricsEnabled: BuiltValueNullFieldError.checkNotNull(isBiometricsEnabled, r'EnterPinViewModel', 'isBiometricsEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
