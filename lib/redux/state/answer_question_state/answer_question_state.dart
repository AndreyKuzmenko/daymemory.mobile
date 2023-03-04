import 'package:built_value/built_value.dart';

part 'answer_question_state.g.dart';

class QuestionAnswer {
  late String question;

  late String text;

  QuestionAnswer({required this.question, required this.text});
}

abstract class AnswerQuestionState implements Built<AnswerQuestionState, AnswerQuestionStateBuilder> {
  List<QuestionAnswer> get answers;

  List<String> get questions;

  String get questionListTitle;

  int get currentIndex;

  AnswerQuestionState._();

  factory AnswerQuestionState([void Function(AnswerQuestionStateBuilder) updates]) = _$AnswerQuestionState;

  factory AnswerQuestionState.initial() => AnswerQuestionState((b) => b
    ..answers = []
    ..questions = []
    ..questionListTitle = ""
    ..currentIndex = 0);
}
