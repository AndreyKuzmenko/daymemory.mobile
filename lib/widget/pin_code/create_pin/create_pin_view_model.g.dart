// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pin_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePinViewModel extends CreatePinViewModel {
  @override
  final int selectedEnteredIndicators;
  @override
  final int selectedConfirmedIndicators;
  @override
  final String enteredPin;
  @override
  final String confirmedPin;
  @override
  final CreatePinType createPinType;
  @override
  final List<String> titles;
  @override
  final TypedFunctionHolder<String> typingCommand;
  @override
  final FunctionHolder clearCommand;
  @override
  final FunctionHolder backCommand;
  @override
  final FunctionHolder clearConfirmedPinCommand;
  @override
  final FunctionHolder successCommand;

  factory _$CreatePinViewModel(
          [void Function(CreatePinViewModelBuilder)? updates]) =>
      (new CreatePinViewModelBuilder()..update(updates))._build();

  _$CreatePinViewModel._(
      {required this.selectedEnteredIndicators,
      required this.selectedConfirmedIndicators,
      required this.enteredPin,
      required this.confirmedPin,
      required this.createPinType,
      required this.titles,
      required this.typingCommand,
      required this.clearCommand,
      required this.backCommand,
      required this.clearConfirmedPinCommand,
      required this.successCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(selectedEnteredIndicators,
        r'CreatePinViewModel', 'selectedEnteredIndicators');
    BuiltValueNullFieldError.checkNotNull(selectedConfirmedIndicators,
        r'CreatePinViewModel', 'selectedConfirmedIndicators');
    BuiltValueNullFieldError.checkNotNull(
        enteredPin, r'CreatePinViewModel', 'enteredPin');
    BuiltValueNullFieldError.checkNotNull(
        confirmedPin, r'CreatePinViewModel', 'confirmedPin');
    BuiltValueNullFieldError.checkNotNull(
        createPinType, r'CreatePinViewModel', 'createPinType');
    BuiltValueNullFieldError.checkNotNull(
        titles, r'CreatePinViewModel', 'titles');
    BuiltValueNullFieldError.checkNotNull(
        typingCommand, r'CreatePinViewModel', 'typingCommand');
    BuiltValueNullFieldError.checkNotNull(
        clearCommand, r'CreatePinViewModel', 'clearCommand');
    BuiltValueNullFieldError.checkNotNull(
        backCommand, r'CreatePinViewModel', 'backCommand');
    BuiltValueNullFieldError.checkNotNull(clearConfirmedPinCommand,
        r'CreatePinViewModel', 'clearConfirmedPinCommand');
    BuiltValueNullFieldError.checkNotNull(
        successCommand, r'CreatePinViewModel', 'successCommand');
  }

  @override
  CreatePinViewModel rebuild(
          void Function(CreatePinViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePinViewModelBuilder toBuilder() =>
      new CreatePinViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePinViewModel &&
        selectedEnteredIndicators == other.selectedEnteredIndicators &&
        selectedConfirmedIndicators == other.selectedConfirmedIndicators &&
        enteredPin == other.enteredPin &&
        confirmedPin == other.confirmedPin &&
        createPinType == other.createPinType &&
        titles == other.titles &&
        typingCommand == other.typingCommand &&
        clearCommand == other.clearCommand &&
        backCommand == other.backCommand &&
        clearConfirmedPinCommand == other.clearConfirmedPinCommand &&
        successCommand == other.successCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedEnteredIndicators.hashCode);
    _$hash = $jc(_$hash, selectedConfirmedIndicators.hashCode);
    _$hash = $jc(_$hash, enteredPin.hashCode);
    _$hash = $jc(_$hash, confirmedPin.hashCode);
    _$hash = $jc(_$hash, createPinType.hashCode);
    _$hash = $jc(_$hash, titles.hashCode);
    _$hash = $jc(_$hash, typingCommand.hashCode);
    _$hash = $jc(_$hash, clearCommand.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, clearConfirmedPinCommand.hashCode);
    _$hash = $jc(_$hash, successCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePinViewModel')
          ..add('selectedEnteredIndicators', selectedEnteredIndicators)
          ..add('selectedConfirmedIndicators', selectedConfirmedIndicators)
          ..add('enteredPin', enteredPin)
          ..add('confirmedPin', confirmedPin)
          ..add('createPinType', createPinType)
          ..add('titles', titles)
          ..add('typingCommand', typingCommand)
          ..add('clearCommand', clearCommand)
          ..add('backCommand', backCommand)
          ..add('clearConfirmedPinCommand', clearConfirmedPinCommand)
          ..add('successCommand', successCommand))
        .toString();
  }
}

class CreatePinViewModelBuilder
    implements Builder<CreatePinViewModel, CreatePinViewModelBuilder> {
  _$CreatePinViewModel? _$v;

  int? _selectedEnteredIndicators;
  int? get selectedEnteredIndicators => _$this._selectedEnteredIndicators;
  set selectedEnteredIndicators(int? selectedEnteredIndicators) =>
      _$this._selectedEnteredIndicators = selectedEnteredIndicators;

  int? _selectedConfirmedIndicators;
  int? get selectedConfirmedIndicators => _$this._selectedConfirmedIndicators;
  set selectedConfirmedIndicators(int? selectedConfirmedIndicators) =>
      _$this._selectedConfirmedIndicators = selectedConfirmedIndicators;

  String? _enteredPin;
  String? get enteredPin => _$this._enteredPin;
  set enteredPin(String? enteredPin) => _$this._enteredPin = enteredPin;

  String? _confirmedPin;
  String? get confirmedPin => _$this._confirmedPin;
  set confirmedPin(String? confirmedPin) => _$this._confirmedPin = confirmedPin;

  CreatePinType? _createPinType;
  CreatePinType? get createPinType => _$this._createPinType;
  set createPinType(CreatePinType? createPinType) =>
      _$this._createPinType = createPinType;

  List<String>? _titles;
  List<String>? get titles => _$this._titles;
  set titles(List<String>? titles) => _$this._titles = titles;

  TypedFunctionHolder<String>? _typingCommand;
  TypedFunctionHolder<String>? get typingCommand => _$this._typingCommand;
  set typingCommand(TypedFunctionHolder<String>? typingCommand) =>
      _$this._typingCommand = typingCommand;

  FunctionHolder? _clearCommand;
  FunctionHolder? get clearCommand => _$this._clearCommand;
  set clearCommand(FunctionHolder? clearCommand) =>
      _$this._clearCommand = clearCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  FunctionHolder? _clearConfirmedPinCommand;
  FunctionHolder? get clearConfirmedPinCommand =>
      _$this._clearConfirmedPinCommand;
  set clearConfirmedPinCommand(FunctionHolder? clearConfirmedPinCommand) =>
      _$this._clearConfirmedPinCommand = clearConfirmedPinCommand;

  FunctionHolder? _successCommand;
  FunctionHolder? get successCommand => _$this._successCommand;
  set successCommand(FunctionHolder? successCommand) =>
      _$this._successCommand = successCommand;

  CreatePinViewModelBuilder();

  CreatePinViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedEnteredIndicators = $v.selectedEnteredIndicators;
      _selectedConfirmedIndicators = $v.selectedConfirmedIndicators;
      _enteredPin = $v.enteredPin;
      _confirmedPin = $v.confirmedPin;
      _createPinType = $v.createPinType;
      _titles = $v.titles;
      _typingCommand = $v.typingCommand;
      _clearCommand = $v.clearCommand;
      _backCommand = $v.backCommand;
      _clearConfirmedPinCommand = $v.clearConfirmedPinCommand;
      _successCommand = $v.successCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePinViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePinViewModel;
  }

  @override
  void update(void Function(CreatePinViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePinViewModel build() => _build();

  _$CreatePinViewModel _build() {
    final _$result = _$v ??
        new _$CreatePinViewModel._(
            selectedEnteredIndicators: BuiltValueNullFieldError.checkNotNull(
                selectedEnteredIndicators, r'CreatePinViewModel', 'selectedEnteredIndicators'),
            selectedConfirmedIndicators: BuiltValueNullFieldError.checkNotNull(
                selectedConfirmedIndicators, r'CreatePinViewModel', 'selectedConfirmedIndicators'),
            enteredPin: BuiltValueNullFieldError.checkNotNull(
                enteredPin, r'CreatePinViewModel', 'enteredPin'),
            confirmedPin: BuiltValueNullFieldError.checkNotNull(
                confirmedPin, r'CreatePinViewModel', 'confirmedPin'),
            createPinType: BuiltValueNullFieldError.checkNotNull(
                createPinType, r'CreatePinViewModel', 'createPinType'),
            titles: BuiltValueNullFieldError.checkNotNull(
                titles, r'CreatePinViewModel', 'titles'),
            typingCommand: BuiltValueNullFieldError.checkNotNull(
                typingCommand, r'CreatePinViewModel', 'typingCommand'),
            clearCommand: BuiltValueNullFieldError.checkNotNull(clearCommand, r'CreatePinViewModel', 'clearCommand'),
            backCommand: BuiltValueNullFieldError.checkNotNull(backCommand, r'CreatePinViewModel', 'backCommand'),
            clearConfirmedPinCommand: BuiltValueNullFieldError.checkNotNull(clearConfirmedPinCommand, r'CreatePinViewModel', 'clearConfirmedPinCommand'),
            successCommand: BuiltValueNullFieldError.checkNotNull(successCommand, r'CreatePinViewModel', 'successCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
