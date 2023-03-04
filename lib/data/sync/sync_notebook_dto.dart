import 'package:daymemory/data/dtos/notebook_dto.dart';

class SyncNotebookDto {
  String id;
  NotebookDto? item;
  DateTime modifiedDate;
  int status;

  SyncNotebookDto({
    required this.id,
    required this.item,
    required this.status,
    required this.modifiedDate,
  });

  factory SyncNotebookDto.fromJson(Map<String, dynamic> json) {
    return SyncNotebookDto(
      id: json['id'],
      status: json['status'],
      modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
      item: json["item"] == null ? null : NotebookDto.fromJson(json["item"]),
    );
  }
}
