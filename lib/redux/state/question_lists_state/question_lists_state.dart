import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/question_list_dto.dart';

part 'question_lists_state.g.dart';

abstract class QuestionListsState implements Built<QuestionListsState, QuestionListsStateBuilder> {
  bool get isLoading;

  List<QuestionListDto> get questionLists;

  QuestionListsState._();

  factory QuestionListsState([void Function(QuestionListsStateBuilder) updates]) = _$QuestionListsState;

  factory QuestionListsState.initial() => QuestionListsState((b) => b
    ..isLoading = false
    ..questionLists = []);

  List<QuestionListDto> reorderQuestionList(int start, int current) {
    var list = questionLists.toList();
    var item = list[start];
    list.removeAt(start);
    list.insert(current > start ? current - 1 : current, item);
    return list;
  }
}
