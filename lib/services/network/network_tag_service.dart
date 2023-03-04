import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/services/network/errors/duplicate_item_exception.dart';
import 'package:daymemory/services/network/network_base_service.dart';
import 'package:retry/retry.dart';

abstract class INetworkTagService {
  Future<TagDto> update(String tagId, String text, int orderRank);

  Future<TagDto> create(String tagId, String text, int orderRank);

  Future<String> delete(String tagId);
}

class NetworkTagService extends NetworkBaseService implements INetworkTagService {
  NetworkTagService({required super.apiUrl, required super.settingsService}) : super();

  TagDto _parseTag(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return TagDto.fromJson(parsed);
  }

  @override
  Future<TagDto> create(String tagId, String text, int orderRank) async {
    var dic = <String, dynamic>{};
    dic["text"] = text;
    dic["tagId"] = tagId;
    dic["orderRank"] = orderRank;

    final jsonString = json.encode(dic);

    final response = await client.post(Uri.https(apiUrl, 'api/tags'), body: jsonString).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseTag(response.body);
    } else if (response.statusCode == 409) {
      Map<String, dynamic> parsed = json.decode(response.body).cast<String, dynamic>();
      if (parsed["Code"] == 100) {
        throw DuplicateItemException();
      }
    }

    throw Exception('Failed to create tag. Status code: ${response.statusCode}, body: ${response.body}');
  }

  @override
  Future<TagDto> update(String tagId, String text, int orderRank) async {
    var dic = <String, dynamic>{};
    dic["text"] = text;
    dic["orderRank"] = orderRank;
    final jsonString = json.encode(dic);

    final response = await client.put(Uri.https(apiUrl, 'api/tags/$tagId'), body: jsonString).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseTag(response.body);
    } else {
      throw Exception('Failed to save tag. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<String> delete(String tagId) async {
    const r = RetryOptions(maxAttempts: 3);
    final response = await r.retry(
      () => client.delete(Uri.https(apiUrl, 'api/tags/$tagId')).timeout(const Duration(seconds: 10)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to delete tag. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }
}
