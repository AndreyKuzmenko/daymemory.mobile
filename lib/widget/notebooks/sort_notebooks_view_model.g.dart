// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_notebooks_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SortNotebooksViewModel extends SortNotebooksViewModel {
  @override
  final String title;
  @override
  final String loadingTitle;
  @override
  final List<NotebookDto> notebooks;
  @override
  final String noNotebooks;
  @override
  final bool showDragIcon;
  @override
  final FunctionHolder? backCommand;
  @override
  final TypedFunctionHolder<ItemPositionDto> reorderCommand;

  factory _$SortNotebooksViewModel(
          [void Function(SortNotebooksViewModelBuilder)? updates]) =>
      (new SortNotebooksViewModelBuilder()..update(updates))._build();

  _$SortNotebooksViewModel._(
      {required this.title,
      required this.loadingTitle,
      required this.notebooks,
      required this.noNotebooks,
      required this.showDragIcon,
      this.backCommand,
      required this.reorderCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'SortNotebooksViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        loadingTitle, r'SortNotebooksViewModel', 'loadingTitle');
    BuiltValueNullFieldError.checkNotNull(
        notebooks, r'SortNotebooksViewModel', 'notebooks');
    BuiltValueNullFieldError.checkNotNull(
        noNotebooks, r'SortNotebooksViewModel', 'noNotebooks');
    BuiltValueNullFieldError.checkNotNull(
        showDragIcon, r'SortNotebooksViewModel', 'showDragIcon');
    BuiltValueNullFieldError.checkNotNull(
        reorderCommand, r'SortNotebooksViewModel', 'reorderCommand');
  }

  @override
  SortNotebooksViewModel rebuild(
          void Function(SortNotebooksViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SortNotebooksViewModelBuilder toBuilder() =>
      new SortNotebooksViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SortNotebooksViewModel &&
        title == other.title &&
        loadingTitle == other.loadingTitle &&
        notebooks == other.notebooks &&
        noNotebooks == other.noNotebooks &&
        showDragIcon == other.showDragIcon &&
        backCommand == other.backCommand &&
        reorderCommand == other.reorderCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, loadingTitle.hashCode);
    _$hash = $jc(_$hash, notebooks.hashCode);
    _$hash = $jc(_$hash, noNotebooks.hashCode);
    _$hash = $jc(_$hash, showDragIcon.hashCode);
    _$hash = $jc(_$hash, backCommand.hashCode);
    _$hash = $jc(_$hash, reorderCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SortNotebooksViewModel')
          ..add('title', title)
          ..add('loadingTitle', loadingTitle)
          ..add('notebooks', notebooks)
          ..add('noNotebooks', noNotebooks)
          ..add('showDragIcon', showDragIcon)
          ..add('backCommand', backCommand)
          ..add('reorderCommand', reorderCommand))
        .toString();
  }
}

class SortNotebooksViewModelBuilder
    implements Builder<SortNotebooksViewModel, SortNotebooksViewModelBuilder> {
  _$SortNotebooksViewModel? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _loadingTitle;
  String? get loadingTitle => _$this._loadingTitle;
  set loadingTitle(String? loadingTitle) => _$this._loadingTitle = loadingTitle;

  List<NotebookDto>? _notebooks;
  List<NotebookDto>? get notebooks => _$this._notebooks;
  set notebooks(List<NotebookDto>? notebooks) => _$this._notebooks = notebooks;

  String? _noNotebooks;
  String? get noNotebooks => _$this._noNotebooks;
  set noNotebooks(String? noNotebooks) => _$this._noNotebooks = noNotebooks;

  bool? _showDragIcon;
  bool? get showDragIcon => _$this._showDragIcon;
  set showDragIcon(bool? showDragIcon) => _$this._showDragIcon = showDragIcon;

  FunctionHolder? _backCommand;
  FunctionHolder? get backCommand => _$this._backCommand;
  set backCommand(FunctionHolder? backCommand) =>
      _$this._backCommand = backCommand;

  TypedFunctionHolder<ItemPositionDto>? _reorderCommand;
  TypedFunctionHolder<ItemPositionDto>? get reorderCommand =>
      _$this._reorderCommand;
  set reorderCommand(TypedFunctionHolder<ItemPositionDto>? reorderCommand) =>
      _$this._reorderCommand = reorderCommand;

  SortNotebooksViewModelBuilder();

  SortNotebooksViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _loadingTitle = $v.loadingTitle;
      _notebooks = $v.notebooks;
      _noNotebooks = $v.noNotebooks;
      _showDragIcon = $v.showDragIcon;
      _backCommand = $v.backCommand;
      _reorderCommand = $v.reorderCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SortNotebooksViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SortNotebooksViewModel;
  }

  @override
  void update(void Function(SortNotebooksViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SortNotebooksViewModel build() => _build();

  _$SortNotebooksViewModel _build() {
    final _$result = _$v ??
        new _$SortNotebooksViewModel._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'SortNotebooksViewModel', 'title'),
            loadingTitle: BuiltValueNullFieldError.checkNotNull(
                loadingTitle, r'SortNotebooksViewModel', 'loadingTitle'),
            notebooks: BuiltValueNullFieldError.checkNotNull(
                notebooks, r'SortNotebooksViewModel', 'notebooks'),
            noNotebooks: BuiltValueNullFieldError.checkNotNull(
                noNotebooks, r'SortNotebooksViewModel', 'noNotebooks'),
            showDragIcon: BuiltValueNullFieldError.checkNotNull(
                showDragIcon, r'SortNotebooksViewModel', 'showDragIcon'),
            backCommand: backCommand,
            reorderCommand: BuiltValueNullFieldError.checkNotNull(
                reorderCommand, r'SortNotebooksViewModel', 'reorderCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
