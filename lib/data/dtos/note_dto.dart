import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';

class LocationDto {
  double latitude = 0;
  double longitude = 0;
  String? address;

  LocationDto({required this.latitude, required this.longitude, required this.address});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["latitude"] = latitude;
    json["longitude"] = longitude;
    json["address"] = address;
    return json;
  }

  factory LocationDto.fromJson(Map<String, dynamic> json) {
    return LocationDto(longitude: json['longitude'], latitude: json['latitude'], address: json["address"]);
  }
}

class NoteDto {
  String id;
  DateTime date;
  String text;
  DateTime modifiedDate;
  LocationDto? location;
  String notebookId;
  //TODO:should not be nullable
  bool? isEncrypted;
  List<FileDto> mediaFiles;
  List<TagDto> tags;

  NoteDto({
    required this.id,
    required this.date,
    required this.text,
    this.location,
    required this.mediaFiles,
    required this.tags,
    required this.modifiedDate,
    required this.notebookId,
    this.isEncrypted,
  });

  factory NoteDto.fromJson(Map<String, dynamic> json) {
    return NoteDto(
        id: json['id'],
        date: DateTime.fromMillisecondsSinceEpoch(json['date']).toUtc(),
        modifiedDate: DateTime.fromMillisecondsSinceEpoch(json['modifiedDate']).toUtc(),
        text: json['text'],
        notebookId: json['notebookId'],
        isEncrypted: json['isEncrypted'],
        mediaFiles: json['mediaFiles'] == null ? [] : json['mediaFiles'].cast<Map<String, dynamic>>().map<FileDto>((json) => FileDto.fromJson(json)).toList(),
        tags: json['tags'] == null ? [] : json['tags'].cast<Map<String, dynamic>>().map<TagDto>((json) => TagDto.fromJson(json)).toList(),
        location: json["location"] == null ? null : LocationDto.fromJson(json["location"]));
  }
}
