enum SortingType {
  byCreatedDate,

  byModifiedDate
}

class NotebookDto {
  String id;
  String title;
  int orderRank;
  bool showInReview;
  DateTime modifiedDate;
  SortingType sortingType;
  int notesCount;
  bool? isEncrypted;

  NotebookDto({
    required this.id,
    required this.title,
    required this.modifiedDate,
    required this.orderRank,
    required this.showInReview,
    required this.sortingType,
    this.isEncrypted,
    this.notesCount = 0,
  });

  factory NotebookDto.fromJson(Map<String, dynamic> json) {
    return NotebookDto(
      id: json['id'],
      orderRank: json['orderRank'],
      showInReview: json['showInReview'],
      title: json['title'],
      isEncrypted: json['isEncrypted'],
      sortingType: SortingType.values[json['sortingType']],
      modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
    );
  }
}
