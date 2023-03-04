// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_list_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionListState extends QuestionListState {
  @override
  final String? questionListId;
  @override
  final String text;
  @override
  final int orderRank;
  @override
  final List<QuestionDto> questions;
  @override
  final bool isSaving;

  factory _$QuestionListState(
          [void Function(QuestionListStateBuilder)? updates]) =>
      (new QuestionListStateBuilder()..update(updates))._build();

  _$QuestionListState._(
      {this.questionListId,
      required this.text,
      required this.orderRank,
      required this.questions,
      required this.isSaving})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(text, r'QuestionListState', 'text');
    BuiltValueNullFieldError.checkNotNull(
        orderRank, r'QuestionListState', 'orderRank');
    BuiltValueNullFieldError.checkNotNull(
        questions, r'QuestionListState', 'questions');
    BuiltValueNullFieldError.checkNotNull(
        isSaving, r'QuestionListState', 'isSaving');
  }

  @override
  QuestionListState rebuild(void Function(QuestionListStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionListStateBuilder toBuilder() =>
      new QuestionListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionListState &&
        questionListId == other.questionListId &&
        text == other.text &&
        orderRank == other.orderRank &&
        questions == other.questions &&
        isSaving == other.isSaving;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questionListId.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, orderRank.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jc(_$hash, isSaving.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionListState')
          ..add('questionListId', questionListId)
          ..add('text', text)
          ..add('orderRank', orderRank)
          ..add('questions', questions)
          ..add('isSaving', isSaving))
        .toString();
  }
}

class QuestionListStateBuilder
    implements Builder<QuestionListState, QuestionListStateBuilder> {
  _$QuestionListState? _$v;

  String? _questionListId;
  String? get questionListId => _$this._questionListId;
  set questionListId(String? questionListId) =>
      _$this._questionListId = questionListId;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _orderRank;
  int? get orderRank => _$this._orderRank;
  set orderRank(int? orderRank) => _$this._orderRank = orderRank;

  List<QuestionDto>? _questions;
  List<QuestionDto>? get questions => _$this._questions;
  set questions(List<QuestionDto>? questions) => _$this._questions = questions;

  bool? _isSaving;
  bool? get isSaving => _$this._isSaving;
  set isSaving(bool? isSaving) => _$this._isSaving = isSaving;

  QuestionListStateBuilder();

  QuestionListStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questionListId = $v.questionListId;
      _text = $v.text;
      _orderRank = $v.orderRank;
      _questions = $v.questions;
      _isSaving = $v.isSaving;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionListState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionListState;
  }

  @override
  void update(void Function(QuestionListStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionListState build() => _build();

  _$QuestionListState _build() {
    final _$result = _$v ??
        new _$QuestionListState._(
            questionListId: questionListId,
            text: BuiltValueNullFieldError.checkNotNull(
                text, r'QuestionListState', 'text'),
            orderRank: BuiltValueNullFieldError.checkNotNull(
                orderRank, r'QuestionListState', 'orderRank'),
            questions: BuiltValueNullFieldError.checkNotNull(
                questions, r'QuestionListState', 'questions'),
            isSaving: BuiltValueNullFieldError.checkNotNull(
                isSaving, r'QuestionListState', 'isSaving'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
