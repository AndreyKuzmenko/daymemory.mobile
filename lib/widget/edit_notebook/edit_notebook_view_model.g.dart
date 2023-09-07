// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_notebook_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditNotebookViewModel extends EditNotebookViewModel {
  @override
  final String? notebookId;
  @override
  final String? notebookTitle;
  @override
  final String title;
  @override
  final String titlePlaceholder;
  @override
  final String doneButtonTitle;
  @override
  final String deleteButtonTitle;
  @override
  final String sortByOption;
  @override
  final String sortByOptionValue;
  @override
  final FunctionHolder selectSortingTypeCommand;
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
  @override
  final FunctionHolder deleteCommand;

  factory _$EditNotebookViewModel(
          [void Function(EditNotebookViewModelBuilder)? updates]) =>
      (new EditNotebookViewModelBuilder()..update(updates))._build();

  _$EditNotebookViewModel._(
      {this.notebookId,
      this.notebookTitle,
      required this.title,
      required this.titlePlaceholder,
      required this.doneButtonTitle,
      required this.deleteButtonTitle,
      required this.sortByOption,
      required this.sortByOptionValue,
      required this.selectSortingTypeCommand,
      required this.saveButtonTitle,
      required this.requiredFieldValidator,
      required this.isSaving,
      required this.titleChangedCommand,
      required this.saveCommand,
      required this.closeCommand,
      required this.deleteCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'EditNotebookViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        titlePlaceholder, r'EditNotebookViewModel', 'titlePlaceholder');
    BuiltValueNullFieldError.checkNotNull(
        doneButtonTitle, r'EditNotebookViewModel', 'doneButtonTitle');
    BuiltValueNullFieldError.checkNotNull(
        deleteButtonTitle, r'EditNotebookViewModel', 'deleteButtonTitle');
    BuiltValueNullFieldError.checkNotNull(
        sortByOption, r'EditNotebookViewModel', 'sortByOption');
    BuiltValueNullFieldError.checkNotNull(
        sortByOptionValue, r'EditNotebookViewModel', 'sortByOptionValue');
    BuiltValueNullFieldError.checkNotNull(selectSortingTypeCommand,
        r'EditNotebookViewModel', 'selectSortingTypeCommand');
    BuiltValueNullFieldError.checkNotNull(
        saveButtonTitle, r'EditNotebookViewModel', 'saveButtonTitle');
    BuiltValueNullFieldError.checkNotNull(requiredFieldValidator,
        r'EditNotebookViewModel', 'requiredFieldValidator');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'EditNotebookViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(
        titleChangedCommand, r'EditNotebookViewModel', 'titleChangedCommand');
    BuiltValueNullFieldError.checkNotNull(
        saveCommand, r'EditNotebookViewModel', 'saveCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'EditNotebookViewModel', 'closeCommand');
    BuiltValueNullFieldError.checkNotNull(
        deleteCommand, r'EditNotebookViewModel', 'deleteCommand');
  }

  @override
  EditNotebookViewModel rebuild(
          void Function(EditNotebookViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditNotebookViewModelBuilder toBuilder() =>
      new EditNotebookViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditNotebookViewModel &&
        notebookId == other.notebookId &&
        notebookTitle == other.notebookTitle &&
        title == other.title &&
        titlePlaceholder == other.titlePlaceholder &&
        doneButtonTitle == other.doneButtonTitle &&
        deleteButtonTitle == other.deleteButtonTitle &&
        sortByOption == other.sortByOption &&
        sortByOptionValue == other.sortByOptionValue &&
        selectSortingTypeCommand == other.selectSortingTypeCommand &&
        saveButtonTitle == other.saveButtonTitle &&
        requiredFieldValidator == other.requiredFieldValidator &&
        isSaving == other.isSaving &&
        titleChangedCommand == other.titleChangedCommand &&
        saveCommand == other.saveCommand &&
        closeCommand == other.closeCommand &&
        deleteCommand == other.deleteCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, notebookTitle.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titlePlaceholder.hashCode);
    _$hash = $jc(_$hash, doneButtonTitle.hashCode);
    _$hash = $jc(_$hash, deleteButtonTitle.hashCode);
    _$hash = $jc(_$hash, sortByOption.hashCode);
    _$hash = $jc(_$hash, sortByOptionValue.hashCode);
    _$hash = $jc(_$hash, selectSortingTypeCommand.hashCode);
    _$hash = $jc(_$hash, saveButtonTitle.hashCode);
    _$hash = $jc(_$hash, requiredFieldValidator.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, titleChangedCommand.hashCode);
    _$hash = $jc(_$hash, saveCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jc(_$hash, deleteCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EditNotebookViewModel')
          ..add('notebookId', notebookId)
          ..add('notebookTitle', notebookTitle)
          ..add('title', title)
          ..add('titlePlaceholder', titlePlaceholder)
          ..add('doneButtonTitle', doneButtonTitle)
          ..add('deleteButtonTitle', deleteButtonTitle)
          ..add('sortByOption', sortByOption)
          ..add('sortByOptionValue', sortByOptionValue)
          ..add('selectSortingTypeCommand', selectSortingTypeCommand)
          ..add('saveButtonTitle', saveButtonTitle)
          ..add('requiredFieldValidator', requiredFieldValidator)
          ..add('isSaving', isSaving)
          ..add('titleChangedCommand', titleChangedCommand)
          ..add('saveCommand', saveCommand)
          ..add('closeCommand', closeCommand)
          ..add('deleteCommand', deleteCommand))
        .toString();
  }
}

class EditNotebookViewModelBuilder
    implements Builder<EditNotebookViewModel, EditNotebookViewModelBuilder> {
  _$EditNotebookViewModel? _$v;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  String? _notebookTitle;
  String? get notebookTitle => _$this._notebookTitle;
  set notebookTitle(String? notebookTitle) =>
      _$this._notebookTitle = notebookTitle;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _titlePlaceholder;
  String? get titlePlaceholder => _$this._titlePlaceholder;
  set titlePlaceholder(String? titlePlaceholder) =>
      _$this._titlePlaceholder = titlePlaceholder;

  String? _doneButtonTitle;
  String? get doneButtonTitle => _$this._doneButtonTitle;
  set doneButtonTitle(String? doneButtonTitle) =>
      _$this._doneButtonTitle = doneButtonTitle;

  String? _deleteButtonTitle;
  String? get deleteButtonTitle => _$this._deleteButtonTitle;
  set deleteButtonTitle(String? deleteButtonTitle) =>
      _$this._deleteButtonTitle = deleteButtonTitle;

  String? _sortByOption;
  String? get sortByOption => _$this._sortByOption;
  set sortByOption(String? sortByOption) => _$this._sortByOption = sortByOption;

  String? _sortByOptionValue;
  String? get sortByOptionValue => _$this._sortByOptionValue;
  set sortByOptionValue(String? sortByOptionValue) =>
      _$this._sortByOptionValue = sortByOptionValue;

  FunctionHolder? _selectSortingTypeCommand;
  FunctionHolder? get selectSortingTypeCommand =>
      _$this._selectSortingTypeCommand;
  set selectSortingTypeCommand(FunctionHolder? selectSortingTypeCommand) =>
      _$this._selectSortingTypeCommand = selectSortingTypeCommand;

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

  FunctionHolder? _deleteCommand;
  FunctionHolder? get deleteCommand => _$this._deleteCommand;
  set deleteCommand(FunctionHolder? deleteCommand) =>
      _$this._deleteCommand = deleteCommand;

  EditNotebookViewModelBuilder();

  EditNotebookViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notebookId = $v.notebookId;
      _notebookTitle = $v.notebookTitle;
      _title = $v.title;
      _titlePlaceholder = $v.titlePlaceholder;
      _doneButtonTitle = $v.doneButtonTitle;
      _deleteButtonTitle = $v.deleteButtonTitle;
      _sortByOption = $v.sortByOption;
      _sortByOptionValue = $v.sortByOptionValue;
      _selectSortingTypeCommand = $v.selectSortingTypeCommand;
      _saveButtonTitle = $v.saveButtonTitle;
      _requiredFieldValidator = $v.requiredFieldValidator;
      _isSaving = $v.isSaving;
      _titleChangedCommand = $v.titleChangedCommand;
      _saveCommand = $v.saveCommand;
      _closeCommand = $v.closeCommand;
      _deleteCommand = $v.deleteCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditNotebookViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditNotebookViewModel;
  }

  @override
  void update(void Function(EditNotebookViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EditNotebookViewModel build() => _build();

  _$EditNotebookViewModel _build() {
    final _$result = _$v ??
        new _$EditNotebookViewModel._(
            notebookId: notebookId,
            notebookTitle: notebookTitle,
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'EditNotebookViewModel', 'title'),
            titlePlaceholder: BuiltValueNullFieldError.checkNotNull(
                titlePlaceholder, r'EditNotebookViewModel', 'titlePlaceholder'),
            doneButtonTitle: BuiltValueNullFieldError.checkNotNull(
                doneButtonTitle, r'EditNotebookViewModel', 'doneButtonTitle'),
            deleteButtonTitle: BuiltValueNullFieldError.checkNotNull(
                deleteButtonTitle, r'EditNotebookViewModel', 'deleteButtonTitle'),
            sortByOption: BuiltValueNullFieldError.checkNotNull(
                sortByOption, r'EditNotebookViewModel', 'sortByOption'),
            sortByOptionValue: BuiltValueNullFieldError.checkNotNull(
                sortByOptionValue, r'EditNotebookViewModel', 'sortByOptionValue'),
            selectSortingTypeCommand: BuiltValueNullFieldError.checkNotNull(
                selectSortingTypeCommand, r'EditNotebookViewModel', 'selectSortingTypeCommand'),
            saveButtonTitle: BuiltValueNullFieldError.checkNotNull(saveButtonTitle, r'EditNotebookViewModel', 'saveButtonTitle'),
            requiredFieldValidator: BuiltValueNullFieldError.checkNotNull(requiredFieldValidator, r'EditNotebookViewModel', 'requiredFieldValidator'),
            isSaving: BuiltValueNullFieldError.checkNotNull(isSaving, r'EditNotebookViewModel', 'isSaving'),
            titleChangedCommand: BuiltValueNullFieldError.checkNotNull(titleChangedCommand, r'EditNotebookViewModel', 'titleChangedCommand'),
            saveCommand: BuiltValueNullFieldError.checkNotNull(saveCommand, r'EditNotebookViewModel', 'saveCommand'),
            closeCommand: BuiltValueNullFieldError.checkNotNull(closeCommand, r'EditNotebookViewModel', 'closeCommand'),
            deleteCommand: BuiltValueNullFieldError.checkNotNull(deleteCommand, r'EditNotebookViewModel', 'deleteCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
