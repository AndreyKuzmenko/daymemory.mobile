class TagDto {
  String id;
  String text;
  int orderRank;
  DateTime modifiedDate;
  bool? isEncrypted;

  TagDto({
    required this.id,
    required this.text,
    required this.orderRank,
    required this.modifiedDate,
    this.isEncrypted,
  });

  factory TagDto.fromJson(Map<String, dynamic> json) {
    return TagDto(
      id: json['id'],
      text: json['text'],
      orderRank: json['orderRank'],
      isEncrypted: json['isEncrypted'],
      modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
    );
  }
}
