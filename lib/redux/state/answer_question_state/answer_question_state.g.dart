// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_question_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerQuestionState extends AnswerQuestionState {
  @override
  final List<QuestionAnswer> answers;
  @override
  final List<String> questions;
  @override
  final String questionListTitle;
  @override
  final int currentIndex;

  factory _$AnswerQuestionState(
          [void Function(AnswerQuestionStateBuilder)? updates]) =>
      (new AnswerQuestionStateBuilder()..update(updates))._build();

  _$AnswerQuestionState._(
      {required this.answers,
      required this.questions,
      required this.questionListTitle,
      required this.currentIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        answers, r'AnswerQuestionState', 'answers');
    BuiltValueNullFieldError.checkNotNull(
        questions, r'AnswerQuestionState', 'questions');
    BuiltValueNullFieldError.checkNotNull(
        questionListTitle, r'AnswerQuestionState', 'questionListTitle');
    BuiltValueNullFieldError.checkNotNull(
        currentIndex, r'AnswerQuestionState', 'currentIndex');
  }

  @override
  AnswerQuestionState rebuild(
          void Function(AnswerQuestionStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnswerQuestionStateBuilder toBuilder() =>
      new AnswerQuestionStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerQuestionState &&
        answers == other.answers &&
        questions == other.questions &&
        questionListTitle == other.questionListTitle &&
        currentIndex == other.currentIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, answers.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, questionListTitle.hashCode);
    _$hash = $jc(_$hash, currentIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnswerQuestionState')
          ..add('answers', answers)
          ..add('questions', questions)
          ..add('questionListTitle', questionListTitle)
          ..add('currentIndex', currentIndex))
        .toString();
  }
}

class AnswerQuestionStateBuilder
    implements Builder<AnswerQuestionState, AnswerQuestionStateBuilder> {
  _$AnswerQuestionState? _$v;

  List<QuestionAnswer>? _answers;
  List<QuestionAnswer>? get answers => _$this._answers;
  set answers(List<QuestionAnswer>? answers) => _$this._answers = answers;

  List<String>? _questions;
  List<String>? get questions => _$this._questions;
  set questions(List<String>? questions) => _$this._questions = questions;

  String? _questionListTitle;
  String? get questionListTitle => _$this._questionListTitle;
  set questionListTitle(String? questionListTitle) =>
      _$this._questionListTitle = questionListTitle;

  int? _currentIndex;
  int? get currentIndex => _$this._currentIndex;
  set currentIndex(int? currentIndex) => _$this._currentIndex = currentIndex;

  AnswerQuestionStateBuilder();

  AnswerQuestionStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _answers = $v.answers;
      _questions = $v.questions;
      _questionListTitle = $v.questionListTitle;
      _currentIndex = $v.currentIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerQuestionState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnswerQuestionState;
  }

  @override
  void update(void Function(AnswerQuestionStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerQuestionState build() => _build();

  _$AnswerQuestionState _build() {
    final _$result = _$v ??
        new _$AnswerQuestionState._(
            answers: BuiltValueNullFieldError.checkNotNull(
                answers, r'AnswerQuestionState', 'answers'),
            questions: BuiltValueNullFieldError.checkNotNull(
                questions, r'AnswerQuestionState', 'questions'),
            questionListTitle: BuiltValueNullFieldError.checkNotNull(
                questionListTitle, r'AnswerQuestionState', 'questionListTitle'),
            currentIndex: BuiltValueNullFieldError.checkNotNull(
                currentIndex, r'AnswerQuestionState', 'currentIndex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
