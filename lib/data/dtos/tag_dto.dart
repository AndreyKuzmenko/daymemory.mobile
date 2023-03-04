class TagDto {
  String id;
  String text;
  int orderRank;
  DateTime modifiedDate;

  TagDto({required this.id, required this.text, required this.orderRank, required this.modifiedDate});

  factory TagDto.fromJson(Map<String, dynamic> json) {
    return TagDto(
      id: json['id'],
      text: json['text'],
      orderRank: json['orderRank'],
      modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
    );
  }
}
