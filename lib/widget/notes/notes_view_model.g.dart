// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotesViewModel extends NotesViewModel {
  @override
  final bool isLoading;
  @override
  final bool isLoadingMore;
  @override
  final bool isAllItemsLoaded;
  @override
  final bool showDrawerMenu;
  @override
  final FunctionHolder? updatedDataCommand;
  @override
  final bool isScrollToTopEnabled;
  @override
  final String title;
  @override
  final String loadingTitle;
  @override
  final String? notebookId;
  @override
  final BuiltList<NoteViewModel> noteList;
  @override
  final String noNotes;
  @override
  final FunctionHolder loadMoreCommand;
  @override
  final FunctionHolder refreshCommand;
  @override
  final FunctionHolder? newNoteCommand;
  @override
  final FunctionHolder? editNotebookCommand;
  @override
  final FunctionHolder? backCommand;

  factory _$NotesViewModel([void Function(NotesViewModelBuilder)? updates]) =>
      (new NotesViewModelBuilder()..update(updates))._build();

  _$NotesViewModel._(
      {required this.isLoading,
      required this.isLoadingMore,
      required this.isAllItemsLoaded,
      required this.showDrawerMenu,
      this.updatedDataCommand,
      required this.isScrollToTopEnabled,
      required this.title,
      required this.loadingTitle,
      this.notebookId,
      required this.noteList,
      required this.noNotes,
      required this.loadMoreCommand,
      required this.refreshCommand,
      this.newNoteCommand,
      this.editNotebookCommand,
      this.backCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'NotesViewModel', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isLoadingMore, r'NotesViewModel', 'isLoadingMore');
    BuiltValueNullFieldError.checkNotNull(
        isAllItemsLoaded, r'NotesViewModel', 'isAllItemsLoaded');
    BuiltValueNullFieldError.checkNotNull(
        showDrawerMenu, r'NotesViewModel', 'showDrawerMenu');
    BuiltValueNullFieldError.checkNotNull(
        isScrollToTopEnabled, r'NotesViewModel', 'isScrollToTopEnabled');
    BuiltValueNullFieldError.checkNotNull(title, r'NotesViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        loadingTitle, r'NotesViewModel', 'loadingTitle');
    BuiltValueNullFieldError.checkNotNull(
        noteList, r'NotesViewModel', 'noteList');
    BuiltValueNullFieldError.checkNotNull(
        noNotes, r'NotesViewModel', 'noNotes');
    BuiltValueNullFieldError.checkNotNull(
        loadMoreCommand, r'NotesViewModel', 'loadMoreCommand');
    BuiltValueNullFieldError.checkNotNull(
        refreshCommand, r'NotesViewModel', 'refreshCommand');
  }

  @override
  NotesViewModel rebuild(void Function(NotesViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesViewModelBuilder toBuilder() =>
      new NotesViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotesViewModel &&
        isLoading == other.isLoading &&
        isLoadingMore == other.isLoadingMore &&
        isAllItemsLoaded == other.isAllItemsLoaded &&
        showDrawerMenu == other.showDrawerMenu &&
        updatedDataCommand == other.updatedDataCommand &&
        isScrollToTopEnabled == other.isScrollToTopEnabled &&
        title == other.title &&
        loadingTitle == other.loadingTitle &&
        notebookId == other.notebookId &&
        noteList == other.noteList &&
        noNotes == other.noNotes &&
        loadMoreCommand == other.loadMoreCommand &&
        refreshCommand == other.refreshCommand &&
        newNoteCommand == other.newNoteCommand &&
        editNotebookCommand == other.editNotebookCommand &&
        backCommand == other.backCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isLoadingMore.hashCode);
    _$hash = $jc(_$hash, isAllItemsLoaded.hashCode);
    _$hash = $jc(_$hash, showDrawerMenu.hashCode);
    _$hash = $jc(_$hash, updatedDataCommand.hashCode);
    _$hash = $jc(_$hash, isScrollToTopEnabled.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, loadingTitle.hashCode);
    _$hash = $jc(_$hash, notebookId.hashCode);
    _$hash = $jc(_$hash, noteList.hashCode);
    _$hash = $jc(_$hash, noNotes.hashCode);
    _$hash = $jc(_$hash, loadMoreCommand.hashCode);
    _$hash = $jc(_$hash, refreshCommand.hashCode);
    _$hash = $jc(_$hash, newNoteCommand.hashCode);
    _$hash = $jc(_$hash, editNotebookCommand.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotesViewModel')
          ..add('isLoading', isLoading)
          ..add('isLoadingMore', isLoadingMore)
          ..add('isAllItemsLoaded', isAllItemsLoaded)
          ..add('showDrawerMenu', showDrawerMenu)
          ..add('updatedDataCommand', updatedDataCommand)
          ..add('isScrollToTopEnabled', isScrollToTopEnabled)
          ..add('title', title)
          ..add('loadingTitle', loadingTitle)
          ..add('notebookId', notebookId)
          ..add('noteList', noteList)
          ..add('noNotes', noNotes)
          ..add('loadMoreCommand', loadMoreCommand)
          ..add('refreshCommand', refreshCommand)
          ..add('newNoteCommand', newNoteCommand)
          ..add('editNotebookCommand', editNotebookCommand)
          ..add('backCommand', backCommand))
        .toString();
  }
}

class NotesViewModelBuilder
    implements Builder<NotesViewModel, NotesViewModelBuilder> {
  _$NotesViewModel? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isLoadingMore;
  bool? get isLoadingMore => _$this._isLoadingMore;
  set isLoadingMore(bool? isLoadingMore) =>
      _$this._isLoadingMore = isLoadingMore;

  bool? _isAllItemsLoaded;
  bool? get isAllItemsLoaded => _$this._isAllItemsLoaded;
  set isAllItemsLoaded(bool? isAllItemsLoaded) =>
      _$this._isAllItemsLoaded = isAllItemsLoaded;

  bool? _showDrawerMenu;
  bool? get showDrawerMenu => _$this._showDrawerMenu;
  set showDrawerMenu(bool? showDrawerMenu) =>
      _$this._showDrawerMenu = showDrawerMenu;

  FunctionHolder? _updatedDataCommand;
  FunctionHolder? get updatedDataCommand => _$this._updatedDataCommand;
  set updatedDataCommand(FunctionHolder? updatedDataCommand) =>
      _$this._updatedDataCommand = updatedDataCommand;

  bool? _isScrollToTopEnabled;
  bool? get isScrollToTopEnabled => _$this._isScrollToTopEnabled;
  set isScrollToTopEnabled(bool? isScrollToTopEnabled) =>
      _$this._isScrollToTopEnabled = isScrollToTopEnabled;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _loadingTitle;
  String? get loadingTitle => _$this._loadingTitle;
  set loadingTitle(String? loadingTitle) => _$this._loadingTitle = loadingTitle;

  String? _notebookId;
  String? get notebookId => _$this._notebookId;
  set notebookId(String? notebookId) => _$this._notebookId = notebookId;

  ListBuilder<NoteViewModel>? _noteList;
  ListBuilder<NoteViewModel> get noteList =>
      _$this._noteList ??= new ListBuilder<NoteViewModel>();
  set noteList(ListBuilder<NoteViewModel>? noteList) =>
      _$this._noteList = noteList;

  String? _noNotes;
  String? get noNotes => _$this._noNotes;
  set noNotes(String? noNotes) => _$this._noNotes = noNotes;

  FunctionHolder? _loadMoreCommand;
  FunctionHolder? get loadMoreCommand => _$this._loadMoreCommand;
  set loadMoreCommand(FunctionHolder? loadMoreCommand) =>
      _$this._loadMoreCommand = loadMoreCommand;

  FunctionHolder? _refreshCommand;
  FunctionHolder? get refreshCommand => _$this._refreshCommand;
  set refreshCommand(FunctionHolder? refreshCommand) =>
      _$this._refreshCommand = refreshCommand;

  FunctionHolder? _newNoteCommand;
  FunctionHolder? get newNoteCommand => _$this._newNoteCommand;
  set newNoteCommand(FunctionHolder? newNoteCommand) =>
      _$this._newNoteCommand = newNoteCommand;

  FunctionHolder? _editNotebookCommand;
  FunctionHolder? get editNotebookCommand => _$this._editNotebookCommand;
  set editNotebookCommand(FunctionHolder? editNotebookCommand) =>
      _$this._editNotebookCommand = editNotebookCommand;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  NotesViewModelBuilder();

  NotesViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _isLoadingMore = $v.isLoadingMore;
      _isAllItemsLoaded = $v.isAllItemsLoaded;
      _showDrawerMenu = $v.showDrawerMenu;
      _updatedDataCommand = $v.updatedDataCommand;
      _isScrollToTopEnabled = $v.isScrollToTopEnabled;
      _title = $v.title;
      _loadingTitle = $v.loadingTitle;
      _notebookId = $v.notebookId;
      _noteList = $v.noteList.toBuilder();
      _noNotes = $v.noNotes;
      _loadMoreCommand = $v.loadMoreCommand;
      _refreshCommand = $v.refreshCommand;
      _newNoteCommand = $v.newNoteCommand;
      _editNotebookCommand = $v.editNotebookCommand;
      _backCommand = $v.backCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotesViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotesViewModel;
  }

  @override
  void update(void Function(NotesViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotesViewModel build() => _build();

  _$NotesViewModel _build() {
    _$NotesViewModel _$result;
    try {
      _$result = _$v ??
          new _$NotesViewModel._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'NotesViewModel', 'isLoading'),
              isLoadingMore: BuiltValueNullFieldError.checkNotNull(
                  isLoadingMore, r'NotesViewModel', 'isLoadingMore'),
              isAllItemsLoaded: BuiltValueNullFieldError.checkNotNull(
                  isAllItemsLoaded, r'NotesViewModel', 'isAllItemsLoaded'),
              showDrawerMenu: BuiltValueNullFieldError.checkNotNull(
                  showDrawerMenu, r'NotesViewModel', 'showDrawerMenu'),
              updatedDataCommand: updatedDataCommand,
              isScrollToTopEnabled: BuiltValueNullFieldError.checkNotNull(
                  isScrollToTopEnabled, r'NotesViewModel', 'isScrollToTopEnabled'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'NotesViewModel', 'title'),
              loadingTitle: BuiltValueNullFieldError.checkNotNull(
                  loadingTitle, r'NotesViewModel', 'loadingTitle'),
              notebookId: notebookId,
              noteList: noteList.build(),
              noNotes:
                  BuiltValueNullFieldError.checkNotNull(noNotes, r'NotesViewModel', 'noNotes'),
              loadMoreCommand: BuiltValueNullFieldError.checkNotNull(loadMoreCommand, r'NotesViewModel', 'loadMoreCommand'),
              refreshCommand: BuiltValueNullFieldError.checkNotNull(refreshCommand, r'NotesViewModel', 'refreshCommand'),
              newNoteCommand: newNoteCommand,
              editNotebookCommand: editNotebookCommand,
              backCommand: backCommand);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'noteList';
        noteList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotesViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
