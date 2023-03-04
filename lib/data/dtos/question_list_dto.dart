import 'package:daymemory/data/dtos/question_dto.dart';

class QuestionListDto {
  String id;
  String text;
  int orderRank;
  List<QuestionDto> questions;

  QuestionListDto({required this.id, required this.text, required this.questions, required this.orderRank});

  factory QuestionListDto.fromJson(Map<String, dynamic> json) {
    return QuestionListDto(
      id: json['id'],
      text: json['text'],
      orderRank: json['orderRank'],
      questions: json['questions'] == null ? [] : json['questions'].cast<Map<String, dynamic>>().map<QuestionDto>((json) => QuestionDto.fromJson(json)).toList(),
    );
  }
}
