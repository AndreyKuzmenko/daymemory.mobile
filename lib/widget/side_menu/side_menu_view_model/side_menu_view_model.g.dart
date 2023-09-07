// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side_menu_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SideMenuViewModel extends SideMenuViewModel {
  @override
  final TypedFunctionHolder<NotebookDto> selectNotebookCommand;
  @override
  final FunctionHolder newNotebookCommand;
  @override
  final String? selectedNotebookId;
  @override
  final List<SideMenuItemViewModel> items;
  @override
  final bool isDesktop;
  @override
  final bool hasError;
  @override
  final String settingsMenuOption;
  @override
  final String newNotebookMenuOption;
  @override
  final String reviewMemoriesMenuOption;
  @override
  final String notebooksMenuOption;
  @override
  final FunctionHolder settingsMenuCommand;
  @override
  final FunctionHolder reviewMemoriesCommand;
  @override
  final FunctionHolder sortNotebooksCommand;

  factory _$SideMenuViewModel(
          [void Function(SideMenuViewModelBuilder)? updates]) =>
      (new SideMenuViewModelBuilder()..update(updates))._build();

  _$SideMenuViewModel._(
      {required this.selectNotebookCommand,
      required this.newNotebookCommand,
      this.selectedNotebookId,
      required this.items,
      required this.isDesktop,
      required this.hasError,
      required this.settingsMenuOption,
      required this.newNotebookMenuOption,
      required this.reviewMemoriesMenuOption,
      required this.notebooksMenuOption,
      required this.settingsMenuCommand,
      required this.reviewMemoriesCommand,
      required this.sortNotebooksCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        selectNotebookCommand, r'SideMenuViewModel', 'selectNotebookCommand');
    BuiltValueNullFieldError.checkNotNull(
        newNotebookCommand, r'SideMenuViewModel', 'newNotebookCommand');
    BuiltValueNullFieldError.checkNotNull(items, r'SideMenuViewModel', 'items');
    BuiltValueNullFieldError.checkNotNull(
        isDesktop, r'SideMenuViewModel', 'isDesktop');
    BuiltValueNullFieldError.checkNotNull(
        hasError, r'SideMenuViewModel', 'hasError');
    BuiltValueNullFieldError.checkNotNull(
        settingsMenuOption, r'SideMenuViewModel', 'settingsMenuOption');
    BuiltValueNullFieldError.checkNotNull(
        newNotebookMenuOption, r'SideMenuViewModel', 'newNotebookMenuOption');
    BuiltValueNullFieldError.checkNotNull(reviewMemoriesMenuOption,
        r'SideMenuViewModel', 'reviewMemoriesMenuOption');
    BuiltValueNullFieldError.checkNotNull(
        notebooksMenuOption, r'SideMenuViewModel', 'notebooksMenuOption');
    BuiltValueNullFieldError.checkNotNull(
        settingsMenuCommand, r'SideMenuViewModel', 'settingsMenuCommand');
    BuiltValueNullFieldError.checkNotNull(
        reviewMemoriesCommand, r'SideMenuViewModel', 'reviewMemoriesCommand');
    BuiltValueNullFieldError.checkNotNull(
        sortNotebooksCommand, r'SideMenuViewModel', 'sortNotebooksCommand');
  }

  @override
  SideMenuViewModel rebuild(void Function(SideMenuViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SideMenuViewModelBuilder toBuilder() =>
      new SideMenuViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SideMenuViewModel &&
        selectNotebookCommand == other.selectNotebookCommand &&
        newNotebookCommand == other.newNotebookCommand &&
        selectedNotebookId == other.selectedNotebookId &&
        items == other.items &&
        isDesktop == other.isDesktop &&
        hasError == other.hasError &&
        settingsMenuOption == other.settingsMenuOption &&
        newNotebookMenuOption == other.newNotebookMenuOption &&
        reviewMemoriesMenuOption == other.reviewMemoriesMenuOption &&
        notebooksMenuOption == other.notebooksMenuOption &&
        settingsMenuCommand == other.settingsMenuCommand &&
        reviewMemoriesCommand == other.reviewMemoriesCommand &&
        sortNotebooksCommand == other.sortNotebooksCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectNotebookCommand.hashCode);
    _$hash = $jc(_$hash, newNotebookCommand.hashCode);
    _$hash = $jc(_$hash, selectedNotebookId.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, isDesktop.hashCode);
    _$hash = $jc(_$hash, hasError.hashCode);
    _$hash = $jc(_$hash, settingsMenuOption.hashCode);
    _$hash = $jc(_$hash, newNotebookMenuOption.hashCode);
    _$hash = $jc(_$hash, reviewMemoriesMenuOption.hashCode);
    _$hash = $jc(_$hash, notebooksMenuOption.hashCode);
    _$hash = $jc(_$hash, settingsMenuCommand.hashCode);
    _$hash = $jc(_$hash, reviewMemoriesCommand.hashCode);
    _$hash = $jc(_$hash, sortNotebooksCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SideMenuViewModel')
          ..add('selectNotebookCommand', selectNotebookCommand)
          ..add('newNotebookCommand', newNotebookCommand)
          ..add('selectedNotebookId', selectedNotebookId)
          ..add('items', items)
          ..add('isDesktop', isDesktop)
          ..add('hasError', hasError)
          ..add('settingsMenuOption', settingsMenuOption)
          ..add('newNotebookMenuOption', newNotebookMenuOption)
          ..add('reviewMemoriesMenuOption', reviewMemoriesMenuOption)
          ..add('notebooksMenuOption', notebooksMenuOption)
          ..add('settingsMenuCommand', settingsMenuCommand)
          ..add('reviewMemoriesCommand', reviewMemoriesCommand)
          ..add('sortNotebooksCommand', sortNotebooksCommand))
        .toString();
  }
}

class SideMenuViewModelBuilder
    implements Builder<SideMenuViewModel, SideMenuViewModelBuilder> {
  _$SideMenuViewModel? _$v;

  TypedFunctionHolder<NotebookDto>? _selectNotebookCommand;
  TypedFunctionHolder<NotebookDto>? get selectNotebookCommand =>
      _$this._selectNotebookCommand;
  set selectNotebookCommand(
          TypedFunctionHolder<NotebookDto>? selectNotebookCommand) =>
      _$this._selectNotebookCommand = selectNotebookCommand;

  FunctionHolder? _newNotebookCommand;
  FunctionHolder? get newNotebookCommand => _$this._newNotebookCommand;
  set newNotebookCommand(FunctionHolder? newNotebookCommand) =>
      _$this._newNotebookCommand = newNotebookCommand;

  String? _selectedNotebookId;
  String? get selectedNotebookId => _$this._selectedNotebookId;
  set selectedNotebookId(String? selectedNotebookId) =>
      _$this._selectedNotebookId = selectedNotebookId;

  List<SideMenuItemViewModel>? _items;
  List<SideMenuItemViewModel>? get items => _$this._items;
  set items(List<SideMenuItemViewModel>? items) => _$this._items = items;

  bool? _isDesktop;
  bool? get isDesktop => _$this._isDesktop;
  set isDesktop(bool? isDesktop) => _$this._isDesktop = isDesktop;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  String? _settingsMenuOption;
  String? get settingsMenuOption => _$this._settingsMenuOption;
  set settingsMenuOption(String? settingsMenuOption) =>
      _$this._settingsMenuOption = settingsMenuOption;

  String? _newNotebookMenuOption;
  String? get newNotebookMenuOption => _$this._newNotebookMenuOption;
  set newNotebookMenuOption(String? newNotebookMenuOption) =>
      _$this._newNotebookMenuOption = newNotebookMenuOption;

  String? _reviewMemoriesMenuOption;
  String? get reviewMemoriesMenuOption => _$this._reviewMemoriesMenuOption;
  set reviewMemoriesMenuOption(String? reviewMemoriesMenuOption) =>
      _$this._reviewMemoriesMenuOption = reviewMemoriesMenuOption;

  String? _notebooksMenuOption;
  String? get notebooksMenuOption => _$this._notebooksMenuOption;
  set notebooksMenuOption(String? notebooksMenuOption) =>
      _$this._notebooksMenuOption = notebooksMenuOption;

  FunctionHolder? _settingsMenuCommand;
  FunctionHolder? get settingsMenuCommand => _$this._settingsMenuCommand;
  set settingsMenuCommand(FunctionHolder? settingsMenuCommand) =>
      _$this._settingsMenuCommand = settingsMenuCommand;

  FunctionHolder? _reviewMemoriesCommand;
  FunctionHolder? get reviewMemoriesCommand => _$this._reviewMemoriesCommand;
  set reviewMemoriesCommand(FunctionHolder? reviewMemoriesCommand) =>
      _$this._reviewMemoriesCommand = reviewMemoriesCommand;

  FunctionHolder? _sortNotebooksCommand;
  FunctionHolder? get sortNotebooksCommand => _$this._sortNotebooksCommand;
  set sortNotebooksCommand(FunctionHolder? sortNotebooksCommand) =>
      _$this._sortNotebooksCommand = sortNotebooksCommand;

  SideMenuViewModelBuilder();

  SideMenuViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectNotebookCommand = $v.selectNotebookCommand;
      _newNotebookCommand = $v.newNotebookCommand;
      _selectedNotebookId = $v.selectedNotebookId;
      _items = $v.items;
      _isDesktop = $v.isDesktop;
      _hasError = $v.hasError;
      _settingsMenuOption = $v.settingsMenuOption;
      _newNotebookMenuOption = $v.newNotebookMenuOption;
      _reviewMemoriesMenuOption = $v.reviewMemoriesMenuOption;
      _notebooksMenuOption = $v.notebooksMenuOption;
      _settingsMenuCommand = $v.settingsMenuCommand;
      _reviewMemoriesCommand = $v.reviewMemoriesCommand;
      _sortNotebooksCommand = $v.sortNotebooksCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SideMenuViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SideMenuViewModel;
  }

  @override
  void update(void Function(SideMenuViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SideMenuViewModel build() => _build();

  _$SideMenuViewModel _build() {
    final _$result = _$v ??
        new _$SideMenuViewModel._(
            selectNotebookCommand: BuiltValueNullFieldError.checkNotNull(
                selectNotebookCommand, r'SideMenuViewModel', 'selectNotebookCommand'),
            newNotebookCommand: BuiltValueNullFieldError.checkNotNull(
                newNotebookCommand, r'SideMenuViewModel', 'newNotebookCommand'),
            selectedNotebookId: selectedNotebookId,
            items: BuiltValueNullFieldError.checkNotNull(
                items, r'SideMenuViewModel', 'items'),
            isDesktop: BuiltValueNullFieldError.checkNotNull(
                isDesktop, r'SideMenuViewModel', 'isDesktop'),
            hasError: BuiltValueNullFieldError.checkNotNull(
                hasError, r'SideMenuViewModel', 'hasError'),
            settingsMenuOption: BuiltValueNullFieldError.checkNotNull(
                settingsMenuOption, r'SideMenuViewModel', 'settingsMenuOption'),
            newNotebookMenuOption: BuiltValueNullFieldError.checkNotNull(
                newNotebookMenuOption, r'SideMenuViewModel', 'newNotebookMenuOption'),
            reviewMemoriesMenuOption:
                BuiltValueNullFieldError.checkNotNull(reviewMemoriesMenuOption, r'SideMenuViewModel', 'reviewMemoriesMenuOption'),
            notebooksMenuOption: BuiltValueNullFieldError.checkNotNull(notebooksMenuOption, r'SideMenuViewModel', 'notebooksMenuOption'),
            settingsMenuCommand: BuiltValueNullFieldError.checkNotNull(settingsMenuCommand, r'SideMenuViewModel', 'settingsMenuCommand'),
            reviewMemoriesCommand: BuiltValueNullFieldError.checkNotNull(reviewMemoriesCommand, r'SideMenuViewModel', 'reviewMemoriesCommand'),
            sortNotebooksCommand: BuiltValueNullFieldError.checkNotNull(sortNotebooksCommand, r'SideMenuViewModel', 'sortNotebooksCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
