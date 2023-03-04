import 'package:daymemory/data/dtos/tag_dto.dart';

class SyncTagItemDto {
  String id;
  TagDto? item;
  DateTime modifiedDate;
  int status;

  SyncTagItemDto({required this.id, required this.item, required this.status, required this.modifiedDate});

  factory SyncTagItemDto.fromJson(Map<String, dynamic> json) {
    return SyncTagItemDto(
      id: json['id'],
      status: json['status'],
      modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
      item: json["item"] == null ? null : TagDto.fromJson(json["item"]),
    );
  }
}
