import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'package:daymemory/data/dtos/question_list_dto.dart';
import 'package:daymemory/services/network/network_base_service.dart';
import 'package:retry/retry.dart';

abstract class INetworkQuestionListService {
  Future<List<QuestionListDto>> fetch();

  Future<QuestionListDto> update(String questionId, String text, List<String> questions, int orderRank);

  Future<QuestionListDto> create(String text, List<String> questions, int orderRank);

  Future<String> delete(String questionListId);
}

class NetworkQuestionListService extends NetworkBaseService implements INetworkQuestionListService {
  NetworkQuestionListService({required super.apiUrl, required super.settingsService}) : super();

  List<QuestionListDto> _parseQuestionLists(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<QuestionListDto>((json) => QuestionListDto.fromJson(json)).toList();
  }

  QuestionListDto _parseQuestionList(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return QuestionListDto.fromJson(parsed);
  }

  @override
  Future<List<QuestionListDto>> fetch() async {
    var uri = Uri.parse("https://$apiUrl/api/question-lists");
    final response = await client.get(uri).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseQuestionLists(response.body);
    } else {
      throw Exception('Failed to load question lists');
    }
  }

  @override
  Future<QuestionListDto> create(String text, List<String> questions, int orderRank) async {
    var dic = <String, dynamic>{};
    dic["text"] = text;
    dic["questions"] = questions;

    final jsonString = json.encode(dic);

    final response = await client.post(Uri.https(apiUrl, 'api/question-lists'), body: jsonString).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseQuestionList(response.body);
    } else {
      throw Exception('Failed to create question list');
    }
  }

  @override
  Future<QuestionListDto> update(String questionId, String text, List<String> questions, int orderRank) async {
    var dic = <String, dynamic>{};
    dic["text"] = text;
    dic["questions"] = questions;
    dic["orderRank"] = orderRank;
    final jsonString = json.encode(dic);

    final response = await client.put(Uri.https(apiUrl, 'api/question-lists/$questionId'), body: jsonString).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseQuestionList(response.body);
    } else {
      throw Exception('Failed to update question list');
    }
  }

  @override
  Future<String> delete(String questionListId) async {
    const r = RetryOptions(maxAttempts: 3);
    final response = await r.retry(
      () => client.delete(Uri.https(apiUrl, 'api/question-lists/$questionListId'), body: null).timeout(const Duration(seconds: 10)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to delete question list');
    }
  }
}
