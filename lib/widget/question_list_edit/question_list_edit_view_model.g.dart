// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_list_edit_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionListEditViewModel extends QuestionListEditViewModel {
  @override
  final String? questionListId;
  @override
  final bool isSaving;
  @override
  final QuestionFieldViewModel questionList;
  @override
  final BuiltList<QuestionFieldViewModel> questions;
  @override
  final FunctionHolder addQuestionCommand;
  @override
  final TypedFunctionHolder<ItemPositionDto> reorderCommand;
  @override
  final FunctionHolder saveCommand;
  @override
  final FunctionHolder closeCommand;

  factory _$QuestionListEditViewModel(
          [void Function(QuestionListEditViewModelBuilder)? updates]) =>
      (new QuestionListEditViewModelBuilder()..update(updates))._build();

  _$QuestionListEditViewModel._(
      {this.questionListId,
      required this.isSaving,
      required this.questionList,
      required this.questions,
      required this.addQuestionCommand,
      required this.reorderCommand,
      required this.saveCommand,
      required this.closeCommand})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'QuestionListEditViewModel', 'isSaving');
    BuiltValueNullFieldError.checkNotNull(
        questionList, r'QuestionListEditViewModel', 'questionList');
    BuiltValueNullFieldError.checkNotNull(
        questions, r'QuestionListEditViewModel', 'questions');
    BuiltValueNullFieldError.checkNotNull(
        addQuestionCommand, r'QuestionListEditViewModel', 'addQuestionCommand');
    BuiltValueNullFieldError.checkNotNull(
        reorderCommand, r'QuestionListEditViewModel', 'reorderCommand');
    BuiltValueNullFieldError.checkNotNull(
        saveCommand, r'QuestionListEditViewModel', 'saveCommand');
    BuiltValueNullFieldError.checkNotNull(
        closeCommand, r'QuestionListEditViewModel', 'closeCommand');
  }

  @override
  QuestionListEditViewModel rebuild(
          void Function(QuestionListEditViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionListEditViewModelBuilder toBuilder() =>
      new QuestionListEditViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionListEditViewModel &&
        questionListId == other.questionListId &&
        isSaving == other.isSaving &&
        questionList == other.questionList &&
        questions == other.questions &&
        addQuestionCommand == other.addQuestionCommand &&
        reorderCommand == other.reorderCommand &&
        saveCommand == other.saveCommand &&
        closeCommand == other.closeCommand;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionListId.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jc(_$hash, questionList.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, addQuestionCommand.hashCode);
    _$hash = $jc(_$hash, reorderCommand.hashCode);
    _$hash = $jc(_$hash, saveCommand.hashCode);
    _$hash = $jc(_$hash, closeCommand.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionListEditViewModel')
          ..add('questionListId', questionListId)
          ..add('isSaving', isSaving)
          ..add('questionList', questionList)
          ..add('questions', questions)
          ..add('addQuestionCommand', addQuestionCommand)
          ..add('reorderCommand', reorderCommand)
          ..add('saveCommand', saveCommand)
          ..add('closeCommand', closeCommand))
        .toString();
  }
}

class QuestionListEditViewModelBuilder
    implements
        Builder<QuestionListEditViewModel, QuestionListEditViewModelBuilder> {
  _$QuestionListEditViewModel? _$v;

  String? _questionListId;
  String? get questionListId => _$this._questionListId;
  set questionListId(String? questionListId) =>
      _$this._questionListId = questionListId;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  QuestionFieldViewModelBuilder? _questionList;
  QuestionFieldViewModelBuilder get questionList =>
      _$this._questionList ??= new QuestionFieldViewModelBuilder();
  set questionList(QuestionFieldViewModelBuilder? questionList) =>
      _$this._questionList = questionList;

  ListBuilder<QuestionFieldViewModel>? _questions;
  ListBuilder<QuestionFieldViewModel> get questions =>
      _$this._questions ??= new ListBuilder<QuestionFieldViewModel>();
  set questions(ListBuilder<QuestionFieldViewModel>? questions) =>
      _$this._questions = questions;

  FunctionHolder? _addQuestionCommand;
  FunctionHolder? get addQuestionCommand => _$this._addQuestionCommand;
  set addQuestionCommand(FunctionHolder? addQuestionCommand) =>
      _$this._addQuestionCommand = addQuestionCommand;

  TypedFunctionHolder<ItemPositionDto>? _reorderCommand;
  TypedFunctionHolder<ItemPositionDto>? get reorderCommand =>
      _$this._reorderCommand;
  set reorderCommand(TypedFunctionHolder<ItemPositionDto>? reorderCommand) =>
      _$this._reorderCommand = reorderCommand;

  FunctionHolder? _saveCommand;
  FunctionHolder? get saveCommand => _$this._saveCommand;
  set saveCommand(FunctionHolder? saveCommand) =>
      _$this._saveCommand = saveCommand;

  FunctionHolder? _closeCommand;
  FunctionHolder? get closeCommand => _$this._closeCommand;
  set closeCommand(FunctionHolder? closeCommand) =>
      _$this._closeCommand = closeCommand;

  QuestionListEditViewModelBuilder();

  QuestionListEditViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionListId = $v.questionListId;
      _isSaving = $v.isSaving;
      _questionList = $v.questionList.toBuilder();
      _questions = $v.questions.toBuilder();
      _addQuestionCommand = $v.addQuestionCommand;
      _reorderCommand = $v.reorderCommand;
      _saveCommand = $v.saveCommand;
      _closeCommand = $v.closeCommand;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionListEditViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionListEditViewModel;
  }

  @override
  void update(void Function(QuestionListEditViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionListEditViewModel build() => _build();

  _$QuestionListEditViewModel _build() {
    _$QuestionListEditViewModel _$result;
    try {
      _$result = _$v ??
          new _$QuestionListEditViewModel._(
              questionListId: questionListId,
              isSaving: BuiltValueNullFieldError.checkNotNull(
                  isSaving, r'QuestionListEditViewModel', 'isSaving'),
              questionList: questionList.build(),
              questions: questions.build(),
              addQuestionCommand: BuiltValueNullFieldError.checkNotNull(
                  addQuestionCommand,
                  r'QuestionListEditViewModel',
                  'addQuestionCommand'),
              reorderCommand: BuiltValueNullFieldError.checkNotNull(
                  reorderCommand,
                  r'QuestionListEditViewModel',
                  'reorderCommand'),
              saveCommand: BuiltValueNullFieldError.checkNotNull(
                  saveCommand, r'QuestionListEditViewModel', 'saveCommand'),
              closeCommand: BuiltValueNullFieldError.checkNotNull(
                  closeCommand, r'QuestionListEditViewModel', 'closeCommand'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questionList';
        questionList.build();
        _$failedField = 'questions';
        questions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuestionListEditViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
