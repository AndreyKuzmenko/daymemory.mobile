class QuestionDto {
  String id;
  String text;

  QuestionDto({required this.id, required this.text});

  factory QuestionDto.fromJson(Map<String, dynamic> json) {
    return QuestionDto(id: json['id'], text: json['text']);
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["text"] = text;
    json["id"] = id;
    return json;
  }
}
