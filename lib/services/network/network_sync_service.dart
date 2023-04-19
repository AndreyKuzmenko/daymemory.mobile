import 'dart:convert';
import 'dart:core';
import 'package:daymemory/data/sync/sync_list_dto.dart';
import 'package:daymemory/data/sync/sync_note_item_dto.dart';
import 'package:daymemory/data/sync/sync_notebook_dto.dart';
import 'package:daymemory/data/sync/sync_tag_item_dto.dart';
import 'package:daymemory/services/network/network_base_service.dart';

abstract class INetworkSyncService {
  Future<SyncListDto<SyncTagItemDto>> fetchTags(int? lastSyncDate);

  Future<SyncListDto<SyncNoteItemDto>> fetchNotes(int? lastSyncDate, int pageSize);

  Future<SyncListDto<SyncNotebookDto>> fetchNootebooks(int? lastSyncDate);
}

class NetworkSyncService extends NetworkBaseService implements INetworkSyncService {
  NetworkSyncService({required super.apiUrl, required super.settingsService}) : super();

  NetworkSyncService init() {
    return this;
  }

  SyncListDto<SyncNoteItemDto> _parseNotes(String responseBody) {
    Map<String, dynamic> parsed = json.decode(responseBody).cast<String, dynamic>();
    var items = parsed["items"].map<SyncNoteItemDto>((json) => SyncNoteItemDto.fromJson(json)).toList();
    var count = parsed["count"];
    return SyncListDto<SyncNoteItemDto>(items: items, count: count);
  }

  SyncListDto<SyncTagItemDto> _parseTags(String responseBody) {
    Map<String, dynamic> parsed = json.decode(responseBody).cast<String, dynamic>();
    var items = parsed["items"].map<SyncTagItemDto>((json) => SyncTagItemDto.fromJson(json)).toList();
    var count = parsed["count"];
    return SyncListDto<SyncTagItemDto>(items: items, count: count);
  }

  SyncListDto<SyncNotebookDto> _parseNotebooks(String responseBody) {
    Map<String, dynamic> parsed = json.decode(responseBody).cast<String, dynamic>();
    var items = parsed["items"].map<SyncNotebookDto>((json) => SyncNotebookDto.fromJson(json)).toList();
    var count = parsed["count"];
    return SyncListDto<SyncNotebookDto>(items: items, count: count);
  }

  @override
  Future<SyncListDto<SyncNoteItemDto>> fetchNotes(int? lastSyncDate, int pageSize) async {
    var params = <String>[];
    params.add("top=$pageSize");
    if (lastSyncDate != null) {
      params.add("lastSyncDateTime=$lastSyncDate");
    }

    var p = params.isNotEmpty ? "?${params.join("&")}" : "";
    var uri = Uri.parse("https://$apiUrl/api/sync/notes$p");

    final response = await client.get(uri).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseNotes(response.body);
    } else {
      throw Exception('Failed to sync note items. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<SyncListDto<SyncTagItemDto>> fetchTags(int? lastSyncDate) async {
    var params = <String>[];
    if (lastSyncDate != null) {
      params.add("lastSyncDateTime=$lastSyncDate");
    }

    var p = params.isNotEmpty ? "?${params.join("&")}" : "";

    var uri = Uri.parse("https://$apiUrl/api/sync/tags$p");

    final response = await client.get(uri).timeout(const Duration(seconds: 10));
    if (response.statusCode == 200) {
      return _parseTags(response.body);
    } else {
      throw Exception('Failed to sync tag items. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }

  @override
  Future<SyncListDto<SyncNotebookDto>> fetchNootebooks(int? lastSyncDate) async {
    var params = <String>[];
    if (lastSyncDate != null) {
      params.add("lastSyncDateTime=$lastSyncDate");
    }

    var p = params.isNotEmpty ? "?${params.join("&")}" : "";

    var uri = Uri.parse("https://$apiUrl/api/sync/notebooks$p");
    final response = await client.get(uri).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      return _parseNotebooks(response.body);
    } else {
      throw Exception('Failed to sync notebook items. Status code: ${response.statusCode}, body: ${response.body}');
    }
  }
}
