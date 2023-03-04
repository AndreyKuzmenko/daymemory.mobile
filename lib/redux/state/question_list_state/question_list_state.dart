import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/question_dto.dart';

part 'question_list_state.g.dart';

abstract class QuestionListState implements Built<QuestionListState, QuestionListStateBuilder> {
  String? get questionListId;

  String get text;

  int get orderRank;

  List<QuestionDto> get questions;

  bool get isSaving;

  QuestionListState._();

  factory QuestionListState([void Function(QuestionListStateBuilder) updates]) = _$QuestionListState;

  factory QuestionListState.initial() => QuestionListState((b) => b
    ..questionListId = null
    ..text = ""
    ..orderRank = 0
    ..isSaving = false
    ..questions = <QuestionDto>[]);
}
