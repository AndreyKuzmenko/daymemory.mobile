import 'dart:convert';
import 'dart:core';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/services/network/network_base_service.dart';
import 'package:http/http.dart' as http;

abstract class INetworkFileService {
  Future<FileDto> uploadMediaFile(String fileId, String filePath, int width, int height, FileType fileType);

  Future<bool> checkIfFileExists(String fileId);
}

class NetworkFileService extends NetworkBaseService implements INetworkFileService {
  NetworkFileService({required super.apiUrl, required super.settingsService}) : super();

  NetworkFileService init() {
    return this;
  }

  FileDto _parseFile(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return FileDto.fromJson(parsed);
  }

  @override
  Future<FileDto> uploadMediaFile(String fileId, String filePath, int width, int height, FileType fileType) async {
    var request = http.MultipartRequest('POST', Uri.https(apiUrl, 'api/files/media'));
    request.files.add(await http.MultipartFile.fromPath('file', filePath));
    request.fields["width"] = width.toString();
    request.fields["height"] = height.toString();
    request.fields["fileId"] = fileId;
    request.fields["fileType"] = fileType.index.toString();

    var response = await client.send(request);

    var res = await response.stream.transform(utf8.decoder).first;
    if (response.statusCode == 200) {
      return _parseFile(res);
    } else {
      throw Exception('Failed to upload a file. Status code: ${response.statusCode}, body: $res');
    }
  }

  @override
  Future<bool> checkIfFileExists(String fileId) async {
    final response = await client.head(Uri.https(apiUrl, 'api/files/$fileId')).timeout(const Duration(seconds: 10));
    return response.statusCode == 200;
  }
}
