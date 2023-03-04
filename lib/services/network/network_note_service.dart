import 'dart:convert';
import 'dart:core';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/services/network/errors/duplicate_item_exception.dart';
import 'package:daymemory/services/network/network_base_service.dart';

abstract class INetworkNoteService {
  Future<NoteDto> update(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    List<String> files,
    LocationDto? location,
    bool isEncrypted,
  );

  Future<NoteDto> create(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    List<String> files,
    LocationDto? location,
    bool isEncrypted,
  );

  Future<String> delete(String noteId);
}

class NetworkNoteService extends NetworkBaseService implements INetworkNoteService {
  NetworkNoteService({required super.apiUrl, required super.settingsService}) : super();

  NetworkNoteService init() {
    return this;
  }

  NoteDto _parseNote(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return NoteDto.fromJson(parsed);
  }

  @override
  Future<NoteDto> create(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    List<String> fileIds,
    LocationDto? location,
    bool isEncrypted,
  ) async {
    var dic = <String, dynamic>{};
    dic["text"] = text;
    dic["noteId"] = noteId;
    dic["notebookId"] = notebookId;
    dic["mediaFiles"] = fileIds;
    dic["date"] = date.millisecondsSinceEpoch;
    dic["createdDate"] = date.millisecondsSinceEpoch;
    dic["location"] = location?.toJson();
    dic["isEncrypted"] = isEncrypted;

    final jsonString = json.encode(dic);

    final response = await client
        .post(
          Uri.https(apiUrl, 'api/notes'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseNote(response.body);
    } else if (response.statusCode == 409) {
      Map<String, dynamic> parsed = json.decode(response.body).cast<String, dynamic>();
      if (parsed["Code"] == 100) {
        throw DuplicateItemException();
      }
    }
    throw Exception('Failed to create note. Status code: ${response.statusCode}, body: ${response.body}');
  }

  @override
  Future<NoteDto> update(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    List<String> fileIds,
    LocationDto? location,
    bool isEncrypted,
  ) async {
    var dic = <String, dynamic>{};
    dic["text"] = text;
    dic["notebookId"] = notebookId;
    dic["mediaFiles"] = fileIds;
    dic["date"] = date.millisecondsSinceEpoch;
    dic["location"] = location?.toJson();
    dic["isEncrypted"] = isEncrypted;
    final jsonString = json.encode(dic);

    final response = await client
        .put(
          Uri.https(apiUrl, 'api/notes/$noteId'),
          body: jsonString,
        )
        .timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseNote(response.body);
    } else {
      throw Exception('Failed to save note. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<String> delete(String noteId) async {
    final response = await client.delete(Uri.https(apiUrl, 'api/notes/$noteId')).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to delete note. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }
}
