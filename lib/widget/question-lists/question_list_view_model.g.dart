// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_list_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionListViewModel extends QuestionListViewModel {
  @override
  final String questionListId;
  @override
  final String text;
  @override
  final List<String> questions;
  @override
  final int orderRank;
  @override
  final String menuEdit;
  @override
  final String menuDelete;
  @override
  final String menuCancel;
  @override
  final FunctionHolder answerQuestionListCommand;
  @override
  final FunctionHolder editQuestionListCommand;
  @override
  final FunctionHolder deleteQuestionListCommand;

  factory _$QuestionListViewModel(
          [void Function(QuestionListViewModelBuilder)? updates]) =>
      (new QuestionListViewModelBuilder()..update(updates))._build();

  _$QuestionListViewModel._(
      {required this.questionListId,
      required this.text,
      required this.questions,
      required this.orderRank,
      required this.menuEdit,
      required this.menuDelete,
      required this.menuCancel,
      required this.answerQuestionListCommand,
      required this.editQuestionListCommand,
      required this.deleteQuestionListCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        questionListId, r'QuestionListViewModel', 'questionListId');
    BuiltValueNullFieldError.checkNotNull(
        text, r'QuestionListViewModel', 'text');
    BuiltValueNullFieldError.checkNotNull(
        questions, r'QuestionListViewModel', 'questions');
    BuiltValueNullFieldError.checkNotNull(
        orderRank, r'QuestionListViewModel', 'orderRank');
    BuiltValueNullFieldError.checkNotNull(
        menuEdit, r'QuestionListViewModel', 'menuEdit');
    BuiltValueNullFieldError.checkNotNull(
        menuDelete, r'QuestionListViewModel', 'menuDelete');
    BuiltValueNullFieldError.checkNotNull(
        menuCancel, r'QuestionListViewModel', 'menuCancel');
    BuiltValueNullFieldError.checkNotNull(answerQuestionListCommand,
        r'QuestionListViewModel', 'answerQuestionListCommand');
    BuiltValueNullFieldError.checkNotNull(editQuestionListCommand,
        r'QuestionListViewModel', 'editQuestionListCommand');
    BuiltValueNullFieldError.checkNotNull(deleteQuestionListCommand,
        r'QuestionListViewModel', 'deleteQuestionListCommand');
  }

  @override
  QuestionListViewModel rebuild(
          void Function(QuestionListViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionListViewModelBuilder toBuilder() =>
      new QuestionListViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionListViewModel &&
        questionListId == other.questionListId &&
        text == other.text &&
        questions == other.questions &&
        orderRank == other.orderRank &&
        menuEdit == other.menuEdit &&
        menuDelete == other.menuDelete &&
        menuCancel == other.menuCancel &&
        answerQuestionListCommand == other.answerQuestionListCommand &&
        editQuestionListCommand == other.editQuestionListCommand &&
        deleteQuestionListCommand == other.deleteQuestionListCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionListId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, orderRank.hashCode);
    _$hash = $jc(_$hash, menuEdit.hashCode);
    _$hash = $jc(_$hash, menuDelete.hashCode);
    _$hash = $jc(_$hash, menuCancel.hashCode);
    _$hash = $jc(_$hash, answerQuestionListCommand.hashCode);
    _$hash = $jc(_$hash, editQuestionListCommand.hashCode);
    _$hash = $jc(_$hash, deleteQuestionListCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionListViewModel')
          ..add('questionListId', questionListId)
          ..add('text', text)
          ..add('questions', questions)
          ..add('orderRank', orderRank)
          ..add('menuEdit', menuEdit)
          ..add('menuDelete', menuDelete)
          ..add('menuCancel', menuCancel)
          ..add('answerQuestionListCommand', answerQuestionListCommand)
          ..add('editQuestionListCommand', editQuestionListCommand)
          ..add('deleteQuestionListCommand', deleteQuestionListCommand))
        .toString();
  }
}

class QuestionListViewModelBuilder
    implements Builder<QuestionListViewModel, QuestionListViewModelBuilder> {
  _$QuestionListViewModel? _$v;

  String? _questionListId;
  String? get questionListId => _$this._questionListId;
  set questionListId(String? questionListId) =>
      _$this._questionListId = questionListId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  List<String>? _questions;
  List<String>? get questions => _$this._questions;
  set questions(List<String>? questions) => _$this._questions = questions;

  int? _orderRank;
  int? get orderRank => _$this._orderRank;
  set orderRank(int? orderRank) => _$this._orderRank = orderRank;

  String? _menuEdit;
  String? get menuEdit => _$this._menuEdit;
  set menuEdit(String? menuEdit) => _$this._menuEdit = menuEdit;

  String? _menuDelete;
  String? get menuDelete => _$this._menuDelete;
  set menuDelete(String? menuDelete) => _$this._menuDelete = menuDelete;

  String? _menuCancel;
  String? get menuCancel => _$this._menuCancel;
  set menuCancel(String? menuCancel) => _$this._menuCancel = menuCancel;

  FunctionHolder? _answerQuestionListCommand;
  FunctionHolder? get answerQuestionListCommand =>
      _$this._answerQuestionListCommand;
  set answerQuestionListCommand(FunctionHolder? answerQuestionListCommand) =>
      _$this._answerQuestionListCommand = answerQuestionListCommand;

  FunctionHolder? _editQuestionListCommand;
  FunctionHolder? get editQuestionListCommand =>
      _$this._editQuestionListCommand;
  set editQuestionListCommand(FunctionHolder? editQuestionListCommand) =>
      _$this._editQuestionListCommand = editQuestionListCommand;

  FunctionHolder? _deleteQuestionListCommand;
  FunctionHolder? get deleteQuestionListCommand =>
      _$this._deleteQuestionListCommand;
  set deleteQuestionListCommand(FunctionHolder? deleteQuestionListCommand) =>
      _$this._deleteQuestionListCommand = deleteQuestionListCommand;

  QuestionListViewModelBuilder();

  QuestionListViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionListId = $v.questionListId;
      _text = $v.text;
      _questions = $v.questions;
      _orderRank = $v.orderRank;
      _menuEdit = $v.menuEdit;
      _menuDelete = $v.menuDelete;
      _menuCancel = $v.menuCancel;
      _answerQuestionListCommand = $v.answerQuestionListCommand;
      _editQuestionListCommand = $v.editQuestionListCommand;
      _deleteQuestionListCommand = $v.deleteQuestionListCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionListViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionListViewModel;
  }

  @override
  void update(void Function(QuestionListViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionListViewModel build() => _build();

  _$QuestionListViewModel _build() {
    final _$result = _$v ??
        new _$QuestionListViewModel._(
            questionListId: BuiltValueNullFieldError.checkNotNull(
                questionListId, r'QuestionListViewModel', 'questionListId'),
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'QuestionListViewModel', 'text'),
            questions: BuiltValueNullFieldError.checkNotNull(
                questions, r'QuestionListViewModel', 'questions'),
            orderRank: BuiltValueNullFieldError.checkNotNull(
                orderRank, r'QuestionListViewModel', 'orderRank'),
            menuEdit: BuiltValueNullFieldError.checkNotNull(
                menuEdit, r'QuestionListViewModel', 'menuEdit'),
            menuDelete: BuiltValueNullFieldError.checkNotNull(
                menuDelete, r'QuestionListViewModel', 'menuDelete'),
            menuCancel: BuiltValueNullFieldError.checkNotNull(
                menuCancel, r'QuestionListViewModel', 'menuCancel'),
            answerQuestionListCommand: BuiltValueNullFieldError.checkNotNull(
                answerQuestionListCommand, r'QuestionListViewModel', 'answerQuestionListCommand'),
            editQuestionListCommand: BuiltValueNullFieldError.checkNotNull(editQuestionListCommand, r'QuestionListViewModel', 'editQuestionListCommand'),
            deleteQuestionListCommand: BuiltValueNullFieldError.checkNotNull(deleteQuestionListCommand, r'QuestionListViewModel', 'deleteQuestionListCommand'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
