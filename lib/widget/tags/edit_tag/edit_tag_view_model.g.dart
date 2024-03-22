// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_tag_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditTagViewModel extends EditTagViewModel {
  @override
  final String? tagId;
  @override
  final String? tagTitle;
  @override
  final String title;
  @override
  final String titlePlaceholder;
  @override
  final String saveButtonTitle;
  @override
  final String requiredFieldValidator;
  @override
  final bool isSaving;
  @override
  final TypedFunctionHolder<String> titleChangedCommand;
  @override
  final FunctionHolder saveCommand;
  @override
  final FunctionHolder closeCommand;

  factory _$EditTagViewModel(
          [void Function(EditTagViewModelBuilder)? updates]) =>
      (new EditTagViewModelBuilder()..update(updates))._build();

  _$EditTagViewModel._(
      {this.tagId,
      this.tagTitle,
      required this.title,
      required this.titlePlaceholder,
      required this.saveButtonTitle,
      required this.requiredFieldValidator,
      required this.isSaving,
      required this.titleChangedCommand,
      required this.saveCommand,
      required this.closeCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'EditTagViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        titlePlaceholder, r'EditTagViewModel', 'titlePlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        saveButtonTitle, r'EditTagViewModel', 'saveButtonTitle');
    BuiltValueNullFieldError.checkNotNull(
        requiredFieldValidator, r'EditTagViewModel', 'requiredFieldValidator');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EditTagViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(
        titleChangedCommand, r'EditTagViewModel', 'titleChangedCommand');
    BuiltValueNullFieldError.checkNotNull(
        saveCommand, r'EditTagViewModel', 'saveCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'EditTagViewModel', 'closeCommand');
  }

  @override
  EditTagViewModel rebuild(void Function(EditTagViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditTagViewModelBuilder toBuilder() =>
      new EditTagViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditTagViewModel &&
        tagId == other.tagId &&
        tagTitle == other.tagTitle &&
        title == other.title &&
        titlePlaceholder == other.titlePlaceholder &&
        saveButtonTitle == other.saveButtonTitle &&
        requiredFieldValidator == other.requiredFieldValidator &&
        isSaving == other.isSaving &&
        titleChangedCommand == other.titleChangedCommand &&
        saveCommand == other.saveCommand &&
        closeCommand == other.closeCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tagId.hashCode);
    _$hash = $jc(_$hash, tagTitle.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titlePlaceholder.hashCode);
    _$hash = $jc(_$hash, saveButtonTitle.hashCode);
    _$hash = $jc(_$hash, requiredFieldValidator.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, titleChangedCommand.hashCode);
    _$hash = $jc(_$hash, saveCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditTagViewModel')
          ..add('tagId', tagId)
          ..add('tagTitle', tagTitle)
          ..add('title', title)
          ..add('titlePlaceholder', titlePlaceholder)
          ..add('saveButtonTitle', saveButtonTitle)
          ..add('requiredFieldValidator', requiredFieldValidator)
          ..add('isSaving', isSaving)
          ..add('titleChangedCommand', titleChangedCommand)
          ..add('saveCommand', saveCommand)
          ..add('closeCommand', closeCommand))
        .toString();
  }
}

class EditTagViewModelBuilder
    implements Builder<EditTagViewModel, EditTagViewModelBuilder> {
  _$EditTagViewModel? _$v;

  String? _tagId;
  String? get tagId => _$this._tagId;
  set tagId(String? tagId) => _$this._tagId = tagId;

  String? _tagTitle;
  String? get tagTitle => _$this._tagTitle;
  set tagTitle(String? tagTitle) => _$this._tagTitle = tagTitle;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titlePlaceholder;
  String? get titlePlaceholder => _$this._titlePlaceholder;
  set titlePlaceholder(String? titlePlaceholder) =>
      _$this._titlePlaceholder = titlePlaceholder;

  String? _saveButtonTitle;
  String? get saveButtonTitle => _$this._saveButtonTitle;
  set saveButtonTitle(String? saveButtonTitle) =>
      _$this._saveButtonTitle = saveButtonTitle;

  String? _requiredFieldValidator;
  String? get requiredFieldValidator => _$this._requiredFieldValidator;
  set requiredFieldValidator(String? requiredFieldValidator) =>
      _$this._requiredFieldValidator = requiredFieldValidator;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  TypedFunctionHolder<String>? _titleChangedCommand;
  TypedFunctionHolder<String>? get titleChangedCommand =>
      _$this._titleChangedCommand;
  set titleChangedCommand(TypedFunctionHolder<String>? titleChangedCommand) =>
      _$this._titleChangedCommand = titleChangedCommand;

  FunctionHolder? _saveCommand;
  FunctionHolder? get saveCommand => _$this._saveCommand;
  set saveCommand(FunctionHolder? saveCommand) =>
      _$this._saveCommand = saveCommand;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  EditTagViewModelBuilder();

  EditTagViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tagId = $v.tagId;
      _tagTitle = $v.tagTitle;
      _title = $v.title;
      _titlePlaceholder = $v.titlePlaceholder;
      _saveButtonTitle = $v.saveButtonTitle;
      _requiredFieldValidator = $v.requiredFieldValidator;
      _isSaving = $v.isSaving;
      _titleChangedCommand = $v.titleChangedCommand;
      _saveCommand = $v.saveCommand;
      _closeCommand = $v.closeCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditTagViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditTagViewModel;
  }

  @override
  void update(void Function(EditTagViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditTagViewModel build() => _build();

  _$EditTagViewModel _build() {
    final _$result = _$v ??
        new _$EditTagViewModel._(
            tagId: tagId,
            tagTitle: tagTitle,
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EditTagViewModel', 'title'),
            titlePlaceholder: BuiltValueNullFieldError.checkNotNull(
                titlePlaceholder, r'EditTagViewModel', 'titlePlaceholder'),
            saveButtonTitle: BuiltValueNullFieldError.checkNotNull(
                saveButtonTitle, r'EditTagViewModel', 'saveButtonTitle'),
            requiredFieldValidator: BuiltValueNullFieldError.checkNotNull(
                requiredFieldValidator, r'EditTagViewModel', 'requiredFieldValidator'),
            isSaving: BuiltValueNullFieldError.checkNotNull(
                isSaving, r'EditTagViewModel', 'isSaving'),
            titleChangedCommand: BuiltValueNullFieldError.checkNotNull(
                titleChangedCommand, r'EditTagViewModel', 'titleChangedCommand'),
            saveCommand: BuiltValueNullFieldError.checkNotNull(
                saveCommand, r'EditTagViewModel', 'saveCommand'),
            closeCommand:
                BuiltValueNullFieldError.checkNotNull(closeCommand, r'EditTagViewModel', 'closeCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
