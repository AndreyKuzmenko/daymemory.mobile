// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_lists_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QuestionListsState extends QuestionListsState {
  @override
  final bool isLoading;
  @override
  final List<QuestionListDto> questionLists;

  factory _$QuestionListsState(
          [void Function(QuestionListsStateBuilder)? updates]) =>
      (new QuestionListsStateBuilder()..update(updates))._build();

  _$QuestionListsState._({required this.isLoading, required this.questionLists})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'QuestionListsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        questionLists, r'QuestionListsState', 'questionLists');
  }

  @override
  QuestionListsState rebuild(
          void Function(QuestionListsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionListsStateBuilder toBuilder() =>
      new QuestionListsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionListsState &&
        isLoading == other.isLoading &&
        questionLists == other.questionLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, questionLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionListsState')
          ..add('isLoading', isLoading)
          ..add('questionLists', questionLists))
        .toString();
  }
}

class QuestionListsStateBuilder
    implements Builder<QuestionListsState, QuestionListsStateBuilder> {
  _$QuestionListsState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  List<QuestionListDto>? _questionLists;
  List<QuestionListDto>? get questionLists => _$this._questionLists;
  set questionLists(List<QuestionListDto>? questionLists) =>
      _$this._questionLists = questionLists;

  QuestionListsStateBuilder();

  QuestionListsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _questionLists = $v.questionLists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionListsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionListsState;
  }

  @override
  void update(void Function(QuestionListsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionListsState build() => _build();

  _$QuestionListsState _build() {
    final _$result = _$v ??
        new _$QuestionListsState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'QuestionListsState', 'isLoading'),
            questionLists: BuiltValueNullFieldError.checkNotNull(
                questionLists, r'QuestionListsState', 'questionLists'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
