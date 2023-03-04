import 'dart:convert';
import 'dart:core';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/services/network/errors/duplicate_item_exception.dart';
import 'package:daymemory/services/network/network_base_service.dart';

abstract class INetworkNotebookService {
  Future<NotebookDto> update(
    String notebookId,
    String title,
    int orderRank,
    bool showInReview,
    SortingType sortingType,
    bool isEncrypted,
  );

  Future<NotebookDto> create(
    String notebookId,
    String title,
    int orderRank,
    bool showInReview,
    SortingType sortingType,
    bool isEncrypted,
  );

  Future<String> delete(String notebookId);
}

class NetworkNotebookService extends NetworkBaseService implements INetworkNotebookService {
  NetworkNotebookService({required super.apiUrl, required super.settingsService}) : super();

  NotebookDto _parseNotebook(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return NotebookDto.fromJson(parsed);
  }

  @override
  Future<NotebookDto> create(
    String notebookId,
    String title,
    int orderRank,
    bool showInReview,
    SortingType sortingType,
    bool isEncrypted,
  ) async {
    var dic = <String, dynamic>{};
    dic["title"] = title;
    dic["notebookId"] = notebookId;
    dic["orderRank"] = orderRank;
    dic["showInReview"] = showInReview;
    dic["sortingType"] = sortingType.index;
    dic["isEncrypted"] = isEncrypted;
    final jsonString = json.encode(dic);

    final response = await client.post(Uri.https(apiUrl, 'api/notebooks'), body: jsonString).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseNotebook(response.body);
    } else if (response.statusCode == 409) {
      Map<String, dynamic> parsed = json.decode(response.body).cast<String, dynamic>();
      if (parsed["Code"] == 100) {
        throw DuplicateItemException();
      }
    }
    throw Exception('Failed to create notebook. Status code: ${response.statusCode}, body: ${response.body}');
  }

  @override
  Future<NotebookDto> update(
    String notebookId,
    String title,
    int orderRank,
    bool showInReview,
    SortingType sortingType,
    bool isEncrypted,
  ) async {
    var dic = <String, dynamic>{};
    dic["title"] = title;
    dic["orderRank"] = orderRank;
    dic["showInReview"] = showInReview;
    dic["sortingType"] = sortingType.index;
    dic["isEncrypted"] = isEncrypted;
    final jsonString = json.encode(dic);

    final response = await client.put(Uri.https(apiUrl, 'api/notebooks/$notebookId'), body: jsonString).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseNotebook(response.body);
    } else {
      throw Exception('Failed to save notebook. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<String> delete(String notebookId) async {
    final response = await client.delete(Uri.https(apiUrl, 'api/notebooks/$notebookId'), body: null).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to delete notebook. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }
}
