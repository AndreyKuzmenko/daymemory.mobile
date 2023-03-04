// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encryption_key_settings_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EncryptionKeySettingsViewModel extends EncryptionKeySettingsViewModel {
  @override
  final String title;
  @override
  final String? encryptionKeyValue;
  @override
  final String requiredFieldValidator;
  @override
  final String encryptionKeyPlaceholder;
  @override
  final String encryptionKeyExplanation;
  @override
  final String copyToClipboardOptionTitle;
  @override
  final TypedFunctionHolder<String> copyToClipboardCommand;
  @override
  final bool isSaving;
  @override
  final bool isEncryptionKeyLocked;
  @override
  final String doneButtonTitle;
  @override
  final TypedFunctionHolder<String> saveCommand;
  @override
  final FunctionHolder closeCommand;

  factory _$EncryptionKeySettingsViewModel(
          [void Function(EncryptionKeySettingsViewModelBuilder)? updates]) =>
      (new EncryptionKeySettingsViewModelBuilder()..update(updates))._build();

  _$EncryptionKeySettingsViewModel._(
      {required this.title,
      this.encryptionKeyValue,
      required this.requiredFieldValidator,
      required this.encryptionKeyPlaceholder,
      required this.encryptionKeyExplanation,
      required this.copyToClipboardOptionTitle,
      required this.copyToClipboardCommand,
      required this.isSaving,
      required this.isEncryptionKeyLocked,
      required this.doneButtonTitle,
      required this.saveCommand,
      required this.closeCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'EncryptionKeySettingsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(requiredFieldValidator,
        r'EncryptionKeySettingsViewModel', 'requiredFieldValidator');
    BuiltValueNullFieldError.checkNotNull(encryptionKeyPlaceholder,
        r'EncryptionKeySettingsViewModel', 'encryptionKeyPlaceholder');
    BuiltValueNullFieldError.checkNotNull(encryptionKeyExplanation,
        r'EncryptionKeySettingsViewModel', 'encryptionKeyExplanation');
    BuiltValueNullFieldError.checkNotNull(copyToClipboardOptionTitle,
        r'EncryptionKeySettingsViewModel', 'copyToClipboardOptionTitle');
    BuiltValueNullFieldError.checkNotNull(copyToClipboardCommand,
        r'EncryptionKeySettingsViewModel', 'copyToClipboardCommand');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EncryptionKeySettingsViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(isEncryptionKeyLocked,
        r'EncryptionKeySettingsViewModel', 'isEncryptionKeyLocked');
    BuiltValueNullFieldError.checkNotNull(
        doneButtonTitle, r'EncryptionKeySettingsViewModel', 'doneButtonTitle');
    BuiltValueNullFieldError.checkNotNull(
        saveCommand, r'EncryptionKeySettingsViewModel', 'saveCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'EncryptionKeySettingsViewModel', 'closeCommand');
  }

  @override
  EncryptionKeySettingsViewModel rebuild(
          void Function(EncryptionKeySettingsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EncryptionKeySettingsViewModelBuilder toBuilder() =>
      new EncryptionKeySettingsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EncryptionKeySettingsViewModel &&
        title == other.title &&
        encryptionKeyValue == other.encryptionKeyValue &&
        requiredFieldValidator == other.requiredFieldValidator &&
        encryptionKeyPlaceholder == other.encryptionKeyPlaceholder &&
        encryptionKeyExplanation == other.encryptionKeyExplanation &&
        copyToClipboardOptionTitle == other.copyToClipboardOptionTitle &&
        copyToClipboardCommand == other.copyToClipboardCommand &&
        isSaving == other.isSaving &&
        isEncryptionKeyLocked == other.isEncryptionKeyLocked &&
        doneButtonTitle == other.doneButtonTitle &&
        saveCommand == other.saveCommand &&
        closeCommand == other.closeCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, encryptionKeyValue.hashCode);
    _$hash = $jc(_$hash, requiredFieldValidator.hashCode);
    _$hash = $jc(_$hash, encryptionKeyPlaceholder.hashCode);
    _$hash = $jc(_$hash, encryptionKeyExplanation.hashCode);
    _$hash = $jc(_$hash, copyToClipboardOptionTitle.hashCode);
    _$hash = $jc(_$hash, copyToClipboardCommand.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, isEncryptionKeyLocked.hashCode);
    _$hash = $jc(_$hash, doneButtonTitle.hashCode);
    _$hash = $jc(_$hash, saveCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EncryptionKeySettingsViewModel')
          ..add('title', title)
          ..add('encryptionKeyValue', encryptionKeyValue)
          ..add('requiredFieldValidator', requiredFieldValidator)
          ..add('encryptionKeyPlaceholder', encryptionKeyPlaceholder)
          ..add('encryptionKeyExplanation', encryptionKeyExplanation)
          ..add('copyToClipboardOptionTitle', copyToClipboardOptionTitle)
          ..add('copyToClipboardCommand', copyToClipboardCommand)
          ..add('isSaving', isSaving)
          ..add('isEncryptionKeyLocked', isEncryptionKeyLocked)
          ..add('doneButtonTitle', doneButtonTitle)
          ..add('saveCommand', saveCommand)
          ..add('closeCommand', closeCommand))
        .toString();
  }
}

class EncryptionKeySettingsViewModelBuilder
    implements
        Builder<EncryptionKeySettingsViewModel,
            EncryptionKeySettingsViewModelBuilder> {
  _$EncryptionKeySettingsViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _encryptionKeyValue;
  String? get encryptionKeyValue => _$this._encryptionKeyValue;
  set encryptionKeyValue(String? encryptionKeyValue) =>
      _$this._encryptionKeyValue = encryptionKeyValue;

  String? _requiredFieldValidator;
  String? get requiredFieldValidator => _$this._requiredFieldValidator;
  set requiredFieldValidator(String? requiredFieldValidator) =>
      _$this._requiredFieldValidator = requiredFieldValidator;

  String? _encryptionKeyPlaceholder;
  String? get encryptionKeyPlaceholder => _$this._encryptionKeyPlaceholder;
  set encryptionKeyPlaceholder(String? encryptionKeyPlaceholder) =>
      _$this._encryptionKeyPlaceholder = encryptionKeyPlaceholder;

  String? _encryptionKeyExplanation;
  String? get encryptionKeyExplanation => _$this._encryptionKeyExplanation;
  set encryptionKeyExplanation(String? encryptionKeyExplanation) =>
      _$this._encryptionKeyExplanation = encryptionKeyExplanation;

  String? _copyToClipboardOptionTitle;
  String? get copyToClipboardOptionTitle => _$this._copyToClipboardOptionTitle;
  set copyToClipboardOptionTitle(String? copyToClipboardOptionTitle) =>
      _$this._copyToClipboardOptionTitle = copyToClipboardOptionTitle;

  TypedFunctionHolder<String>? _copyToClipboardCommand;
  TypedFunctionHolder<String>? get copyToClipboardCommand =>
      _$this._copyToClipboardCommand;
  set copyToClipboardCommand(
          TypedFunctionHolder<String>? copyToClipboardCommand) =>
      _$this._copyToClipboardCommand = copyToClipboardCommand;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  bool? _isEncryptionKeyLocked;
  bool? get isEncryptionKeyLocked => _$this._isEncryptionKeyLocked;
  set isEncryptionKeyLocked(bool? isEncryptionKeyLocked) =>
      _$this._isEncryptionKeyLocked = isEncryptionKeyLocked;

  String? _doneButtonTitle;
  String? get doneButtonTitle => _$this._doneButtonTitle;
  set doneButtonTitle(String? doneButtonTitle) =>
      _$this._doneButtonTitle = doneButtonTitle;

  TypedFunctionHolder<String>? _saveCommand;
  TypedFunctionHolder<String>? get saveCommand => _$this._saveCommand;
  set saveCommand(TypedFunctionHolder<String>? saveCommand) =>
      _$this._saveCommand = saveCommand;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  EncryptionKeySettingsViewModelBuilder();

  EncryptionKeySettingsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _encryptionKeyValue = $v.encryptionKeyValue;
      _requiredFieldValidator = $v.requiredFieldValidator;
      _encryptionKeyPlaceholder = $v.encryptionKeyPlaceholder;
      _encryptionKeyExplanation = $v.encryptionKeyExplanation;
      _copyToClipboardOptionTitle = $v.copyToClipboardOptionTitle;
      _copyToClipboardCommand = $v.copyToClipboardCommand;
      _isSaving = $v.isSaving;
      _isEncryptionKeyLocked = $v.isEncryptionKeyLocked;
      _doneButtonTitle = $v.doneButtonTitle;
      _saveCommand = $v.saveCommand;
      _closeCommand = $v.closeCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EncryptionKeySettingsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EncryptionKeySettingsViewModel;
  }

  @override
  void update(void Function(EncryptionKeySettingsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EncryptionKeySettingsViewModel build() => _build();

  _$EncryptionKeySettingsViewModel _build() {
    final _$result = _$v ??
        new _$EncryptionKeySettingsViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EncryptionKeySettingsViewModel', 'title'),
            encryptionKeyValue: encryptionKeyValue,
            requiredFieldValidator: BuiltValueNullFieldError.checkNotNull(
                requiredFieldValidator, r'EncryptionKeySettingsViewModel', 'requiredFieldValidator'),
            encryptionKeyPlaceholder: BuiltValueNullFieldError.checkNotNull(
                encryptionKeyPlaceholder, r'EncryptionKeySettingsViewModel', 'encryptionKeyPlaceholder'),
            encryptionKeyExplanation: BuiltValueNullFieldError.checkNotNull(
                encryptionKeyExplanation, r'EncryptionKeySettingsViewModel', 'encryptionKeyExplanation'),
            copyToClipboardOptionTitle: BuiltValueNullFieldError.checkNotNull(
                copyToClipboardOptionTitle,
                r'EncryptionKeySettingsViewModel',
                'copyToClipboardOptionTitle'),
            copyToClipboardCommand: BuiltValueNullFieldError.checkNotNull(
                copyToClipboardCommand, r'EncryptionKeySettingsViewModel', 'copyToClipboardCommand'),
            isSaving: BuiltValueNullFieldError.checkNotNull(isSaving, r'EncryptionKeySettingsViewModel', 'isSaving'),
            isEncryptionKeyLocked: BuiltValueNullFieldError.checkNotNull(isEncryptionKeyLocked, r'EncryptionKeySettingsViewModel', 'isEncryptionKeyLocked'),
            doneButtonTitle: BuiltValueNullFieldError.checkNotNull(doneButtonTitle, r'EncryptionKeySettingsViewModel', 'doneButtonTitle'),
            saveCommand: BuiltValueNullFieldError.checkNotNull(saveCommand, r'EncryptionKeySettingsViewModel', 'saveCommand'),
            closeCommand: BuiltValueNullFieldError.checkNotNull(closeCommand, r'EncryptionKeySettingsViewModel', 'closeCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
