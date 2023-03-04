// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_notebook_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectNotebookViewModel extends SelectNotebookViewModel {
  @override
  final String? selectedNotebookId;
  @override
  final String newNotebookMenuOption;
  @override
  final BuiltList<NotebookDto> notebooks;
  @override
  final String title;
  @override
  final FunctionHolder closeCommand;
  @override
  final FunctionHolder newNotebookCommand;
  @override
  final TypedFunctionHolder<String> selectNotebookCommand;

  factory _$SelectNotebookViewModel(
          [void Function(SelectNotebookViewModelBuilder)? updates]) =>
      (new SelectNotebookViewModelBuilder()..update(updates))._build();

  _$SelectNotebookViewModel._(
      {this.selectedNotebookId,
      required this.newNotebookMenuOption,
      required this.notebooks,
      required this.title,
      required this.closeCommand,
      required this.newNotebookCommand,
      required this.selectNotebookCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(newNotebookMenuOption,
        r'SelectNotebookViewModel', 'newNotebookMenuOption');
    BuiltValueNullFieldError.checkNotNull(
        notebooks, r'SelectNotebookViewModel', 'notebooks');
    BuiltValueNullFieldError.checkNotNull(
        title, r'SelectNotebookViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'SelectNotebookViewModel', 'closeCommand');
    BuiltValueNullFieldError.checkNotNull(
        newNotebookCommand, r'SelectNotebookViewModel', 'newNotebookCommand');
    BuiltValueNullFieldError.checkNotNull(selectNotebookCommand,
        r'SelectNotebookViewModel', 'selectNotebookCommand');
  }

  @override
  SelectNotebookViewModel rebuild(
          void Function(SelectNotebookViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectNotebookViewModelBuilder toBuilder() =>
      new SelectNotebookViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectNotebookViewModel &&
        selectedNotebookId == other.selectedNotebookId &&
        newNotebookMenuOption == other.newNotebookMenuOption &&
        notebooks == other.notebooks &&
        title == other.title &&
        closeCommand == other.closeCommand &&
        newNotebookCommand == other.newNotebookCommand &&
        selectNotebookCommand == other.selectNotebookCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectedNotebookId.hashCode);
    _$hash = $jc(_$hash, newNotebookMenuOption.hashCode);
    _$hash = $jc(_$hash, notebooks.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jc(_$hash, newNotebookCommand.hashCode);
    _$hash = $jc(_$hash, selectNotebookCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectNotebookViewModel')
          ..add('selectedNotebookId', selectedNotebookId)
          ..add('newNotebookMenuOption', newNotebookMenuOption)
          ..add('notebooks', notebooks)
          ..add('title', title)
          ..add('closeCommand', closeCommand)
          ..add('newNotebookCommand', newNotebookCommand)
          ..add('selectNotebookCommand', selectNotebookCommand))
        .toString();
  }
}

class SelectNotebookViewModelBuilder
    implements
        Builder<SelectNotebookViewModel, SelectNotebookViewModelBuilder> {
  _$SelectNotebookViewModel? _$v;

  String? _selectedNotebookId;
  String? get selectedNotebookId => _$this._selectedNotebookId;
  set selectedNotebookId(String? selectedNotebookId) =>
      _$this._selectedNotebookId = selectedNotebookId;

  String? _newNotebookMenuOption;
  String? get newNotebookMenuOption => _$this._newNotebookMenuOption;
  set newNotebookMenuOption(String? newNotebookMenuOption) =>
      _$this._newNotebookMenuOption = newNotebookMenuOption;

  ListBuilder<NotebookDto>? _notebooks;
  ListBuilder<NotebookDto> get notebooks =>
      _$this._notebooks ??= new ListBuilder<NotebookDto>();
  set notebooks(ListBuilder<NotebookDto>? notebooks) =>
      _$this._notebooks = notebooks;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  FunctionHolder? _newNotebookCommand;
  FunctionHolder? get newNotebookCommand => _$this._newNotebookCommand;
  set newNotebookCommand(FunctionHolder? newNotebookCommand) =>
      _$this._newNotebookCommand = newNotebookCommand;

  TypedFunctionHolder<String>? _selectNotebookCommand;
  TypedFunctionHolder<String>? get selectNotebookCommand =>
      _$this._selectNotebookCommand;
  set selectNotebookCommand(
          TypedFunctionHolder<String>? selectNotebookCommand) =>
      _$this._selectNotebookCommand = selectNotebookCommand;

  SelectNotebookViewModelBuilder();

  SelectNotebookViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedNotebookId = $v.selectedNotebookId;
      _newNotebookMenuOption = $v.newNotebookMenuOption;
      _notebooks = $v.notebooks.toBuilder();
      _title = $v.title;
      _closeCommand = $v.closeCommand;
      _newNotebookCommand = $v.newNotebookCommand;
      _selectNotebookCommand = $v.selectNotebookCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectNotebookViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectNotebookViewModel;
  }

  @override
  void update(void Function(SelectNotebookViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectNotebookViewModel build() => _build();

  _$SelectNotebookViewModel _build() {
    _$SelectNotebookViewModel _$result;
    try {
      _$result = _$v ??
          new _$SelectNotebookViewModel._(
              selectedNotebookId: selectedNotebookId,
              newNotebookMenuOption: BuiltValueNullFieldError.checkNotNull(
                  newNotebookMenuOption,
                  r'SelectNotebookViewModel',
                  'newNotebookMenuOption'),
              notebooks: notebooks.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'SelectNotebookViewModel', 'title'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(
                  closeCommand, r'SelectNotebookViewModel', 'closeCommand'),
              newNotebookCommand: BuiltValueNullFieldError.checkNotNull(
                  newNotebookCommand,
                  r'SelectNotebookViewModel',
                  'newNotebookCommand'),
              selectNotebookCommand: BuiltValueNullFieldError.checkNotNull(
                  selectNotebookCommand,
                  r'SelectNotebookViewModel',
                  'selectNotebookCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notebooks';
        notebooks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectNotebookViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
