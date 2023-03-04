// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_lists_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionListsViewModel extends QuestionListsViewModel {
  @override
  final bool isLoading;
  @override
  final String title;
  @override
  final String loadingTitle;
  @override
  final BuiltList<QuestionListViewModel> questionLists;
  @override
  final String noQuestionLists;
  @override
  final FunctionHolder refreshCommand;
  @override
  final TypedFunctionHolder<ItemPositionDto> reorderCommand;
  @override
  final FunctionHolder newQuestionListCommand;

  factory _$QuestionListsViewModel(
          [void Function(QuestionListsViewModelBuilder)? updates]) =>
      (new QuestionListsViewModelBuilder()..update(updates))._build();

  _$QuestionListsViewModel._(
      {required this.isLoading,
      required this.title,
      required this.loadingTitle,
      required this.questionLists,
      required this.noQuestionLists,
      required this.refreshCommand,
      required this.reorderCommand,
      required this.newQuestionListCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'QuestionListsViewModel', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        title, r'QuestionListsViewModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        loadingTitle, r'QuestionListsViewModel', 'loadingTitle');
    BuiltValueNullFieldError.checkNotNull(
        questionLists, r'QuestionListsViewModel', 'questionLists');
    BuiltValueNullFieldError.checkNotNull(
        noQuestionLists, r'QuestionListsViewModel', 'noQuestionLists');
    BuiltValueNullFieldError.checkNotNull(
        refreshCommand, r'QuestionListsViewModel', 'refreshCommand');
    BuiltValueNullFieldError.checkNotNull(
        reorderCommand, r'QuestionListsViewModel', 'reorderCommand');
    BuiltValueNullFieldError.checkNotNull(newQuestionListCommand,
        r'QuestionListsViewModel', 'newQuestionListCommand');
  }

  @override
  QuestionListsViewModel rebuild(
          void Function(QuestionListsViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionListsViewModelBuilder toBuilder() =>
      new QuestionListsViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionListsViewModel &&
        isLoading == other.isLoading &&
        title == other.title &&
        loadingTitle == other.loadingTitle &&
        questionLists == other.questionLists &&
        noQuestionLists == other.noQuestionLists &&
        refreshCommand == other.refreshCommand &&
        reorderCommand == other.reorderCommand &&
        newQuestionListCommand == other.newQuestionListCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, loadingTitle.hashCode);
    _$hash = $jc(_$hash, questionLists.hashCode);
    _$hash = $jc(_$hash, noQuestionLists.hashCode);
    _$hash = $jc(_$hash, refreshCommand.hashCode);
    _$hash = $jc(_$hash, reorderCommand.hashCode);
    _$hash = $jc(_$hash, newQuestionListCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionListsViewModel')
          ..add('isLoading', isLoading)
          ..add('title', title)
          ..add('loadingTitle', loadingTitle)
          ..add('questionLists', questionLists)
          ..add('noQuestionLists', noQuestionLists)
          ..add('refreshCommand', refreshCommand)
          ..add('reorderCommand', reorderCommand)
          ..add('newQuestionListCommand', newQuestionListCommand))
        .toString();
  }
}

class QuestionListsViewModelBuilder
    implements Builder<QuestionListsViewModel, QuestionListsViewModelBuilder> {
  _$QuestionListsViewModel? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _loadingTitle;
  String? get loadingTitle => _$this._loadingTitle;
  set loadingTitle(String? loadingTitle) => _$this._loadingTitle = loadingTitle;

  ListBuilder<QuestionListViewModel>? _questionLists;
  ListBuilder<QuestionListViewModel> get questionLists =>
      _$this._questionLists ??= new ListBuilder<QuestionListViewModel>();
  set questionLists(ListBuilder<QuestionListViewModel>? questionLists) =>
      _$this._questionLists = questionLists;

  String? _noQuestionLists;
  String? get noQuestionLists => _$this._noQuestionLists;
  set noQuestionLists(String? noQuestionLists) =>
      _$this._noQuestionLists = noQuestionLists;

  FunctionHolder? _refreshCommand;
  FunctionHolder? get refreshCommand => _$this._refreshCommand;
  set refreshCommand(FunctionHolder? refreshCommand) =>
      _$this._refreshCommand = refreshCommand;

  TypedFunctionHolder<ItemPositionDto>? _reorderCommand;
  TypedFunctionHolder<ItemPositionDto>? get reorderCommand =>
      _$this._reorderCommand;
  set reorderCommand(TypedFunctionHolder<ItemPositionDto>? reorderCommand) =>
      _$this._reorderCommand = reorderCommand;

  FunctionHolder? _newQuestionListCommand;
  FunctionHolder? get newQuestionListCommand => _$this._newQuestionListCommand;
  set newQuestionListCommand(FunctionHolder? newQuestionListCommand) =>
      _$this._newQuestionListCommand = newQuestionListCommand;

  QuestionListsViewModelBuilder();

  QuestionListsViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _title = $v.title;
      _loadingTitle = $v.loadingTitle;
      _questionLists = $v.questionLists.toBuilder();
      _noQuestionLists = $v.noQuestionLists;
      _refreshCommand = $v.refreshCommand;
      _reorderCommand = $v.reorderCommand;
      _newQuestionListCommand = $v.newQuestionListCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionListsViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionListsViewModel;
  }

  @override
  void update(void Function(QuestionListsViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionListsViewModel build() => _build();

  _$QuestionListsViewModel _build() {
    _$QuestionListsViewModel _$result;
    try {
      _$result = _$v ??
          new _$QuestionListsViewModel._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'QuestionListsViewModel', 'isLoading'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'QuestionListsViewModel', 'title'),
              loadingTitle: BuiltValueNullFieldError.checkNotNull(
                  loadingTitle, r'QuestionListsViewModel', 'loadingTitle'),
              questionLists: questionLists.build(),
              noQuestionLists: BuiltValueNullFieldError.checkNotNull(
                  noQuestionLists,
                  r'QuestionListsViewModel',
                  'noQuestionLists'),
              refreshCommand: BuiltValueNullFieldError.checkNotNull(
                  refreshCommand, r'QuestionListsViewModel', 'refreshCommand'),
              reorderCommand: BuiltValueNullFieldError.checkNotNull(
                  reorderCommand, r'QuestionListsViewModel', 'reorderCommand'),
              newQuestionListCommand: BuiltValueNullFieldError.checkNotNull(
                  newQuestionListCommand,
                  r'QuestionListsViewModel',
                  'newQuestionListCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questionLists';
        questionLists.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionListsViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
