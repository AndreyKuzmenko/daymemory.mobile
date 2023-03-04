import 'package:daymemory/data/dtos/note_dto.dart';

class SyncNoteItemDto {
  String id;
  NoteDto? item;
  DateTime modifiedDate;
  int status;

  SyncNoteItemDto({required this.id, required this.item, required this.status, required this.modifiedDate});

  factory SyncNoteItemDto.fromJson(Map<String, dynamic> json) {
    return SyncNoteItemDto(
      id: json['id'],
      status: json['status'],
      modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
      item: json["item"] == null ? null : NoteDto.fromJson(json["item"]),
    );
  }
}
