// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';
import 'dart:io';
import 'package:daymemory/services/image_resizer_service/image_resizer_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/storage/file-storage/folder_resolver.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:http/http.dart' as http;
import 'package:video_compress/video_compress.dart';

abstract class IFileService {
  Future<String> savePhotoFile(String filePath, String fileName, String fileId);

  Future<String> saveVideoFile(String filePath, String fileName, String fileId);

  Future<String> getFilePath(String fileId, String fileName, bool useOriginal);

  Future deleteFile(String fileId);

  Future deleteAllFiles();
}

class FileService implements IFileService {
  final ILoggingService loggingService;

  final IFolderResolver folderResolver;

  final IImageResizerService imageResizerService;

  FileService({required this.loggingService, required this.folderResolver, required this.imageResizerService});

  @override
  Future deleteAllFiles() async {
    final directory = await folderResolver.getPathToDocuments();
    var fileDirectory = p.join("$directory", "files");
    if (await Directory(fileDirectory).exists()) {
      await Directory(fileDirectory).delete(recursive: true);
    }
  }

  @override
  Future deleteFile(String fileId) async {
    final directory = await folderResolver.getPathToDocuments();
    var fileDirectory = p.join("$directory", "files", "$fileId");
    if (await Directory(fileDirectory).exists()) {
      await Directory(fileDirectory).delete(recursive: true);
    }
  }

  @override
  Future<String> getFilePath(String fileId, String fileName, bool useOriginal) async {
    final directory = await folderResolver.getPathToDocuments();

    var thumbnailPath = p.join("$directory", "files", "$fileId", "thumbnail_$fileName");
    if (!useOriginal && await File(thumbnailPath).exists()) {
      return thumbnailPath;
    }

    return p.join("$directory", "files", "$fileId", "$fileName");
  }

  @override
  Future<String> savePhotoFile(String filePath, String fileName, String fileId) async {
    final directory = await folderResolver.getPathToDocuments();

    var extension = p.extension(fileName);
    if (extension.isEmpty) {
      extension = ".png";
    }

    var imagesDIrectory = Directory(p.join("$directory", "files"));
    if (!await imagesDIrectory.exists()) {
      await imagesDIrectory.create();
    }

    var fileDirectoryPath = p.join("$directory", "files", "$fileId");
    var fileDirectory = Directory(fileDirectoryPath);

    if (!await fileDirectory.exists()) {
      await fileDirectory.create();
    }

    var destinationFileName = "file$extension";
    var thumbnailFileName = "thumbnail_$destinationFileName";
    var fileStoragePath = p.join(fileDirectoryPath, "$destinationFileName");
    var fileThumbnailPath = p.join(fileDirectoryPath, "$thumbnailFileName");

    if (await File(fileStoragePath).exists()) {
      return destinationFileName;
    }
    int errorCount = 0;
    do {
      try {
        await compute((message) {
          _savePhotoFileLocally(filePath, fileStoragePath, fileThumbnailPath);
        }, "save files");

        break;
      } catch (e) {
        loggingService.logError(e);
        if (errorCount == 3) {
          throw Exception("Error saving file: $e");
        }
        errorCount++;
      }
    } while (true);

    return destinationFileName;
  }

  @override
  Future<String> saveVideoFile(String filePath, String fileName, String fileId) async {
    final directory = await folderResolver.getPathToDocuments();

    var extension = p.extension(fileName);
    if (extension.isEmpty) {
      extension = ".mp4";
    }

    var imagesDIrectory = Directory(p.join("$directory", "files"));
    if (!await imagesDIrectory.exists()) {
      await imagesDIrectory.create();
    }

    var fileDirectoryPath = p.join("$directory", "files", "$fileId");
    var fileDirectory = Directory(fileDirectoryPath);

    if (!await fileDirectory.exists()) {
      await fileDirectory.create();
    }

    var destinationFileName = "file$extension";
    var fileStoragePath = p.join(fileDirectoryPath, "$destinationFileName");

    if (await File(fileStoragePath).exists()) {
      return destinationFileName;
    }
    int errorCount = 0;
    do {
      try {
        destinationFileName = await _saveVideoFileLocally(filePath, fileDirectoryPath, destinationFileName);
        break;
      } catch (e) {
        loggingService.logError(e);
        if (errorCount == 3) {
          throw Exception("Error saving file: $e");
        }
        errorCount++;
      }
    } while (true);

    return destinationFileName;
  }

  //TODO: extract
  Future<void> _savePhotoFileLocally(String filePath, String fileStoragePath, String fileThumbnailPath) async {
    File file;
    //Chech if a file is remote
    if (filePath.startsWith("http")) {
      var response = await http.get(Uri.parse(filePath));

      file = await File(fileStoragePath).create(recursive: true);
      await file.writeAsBytes(response.bodyBytes, flush: true);
    } else {
      file = File(filePath);
      await file.copy(fileStoragePath);
    }

    await imageResizerService.resize(fileStoragePath, fileThumbnailPath, 1500, 80);
  }

  //TODO: extract
  Future<String> _saveVideoFileLocally(String filePath, String destinationDirectoryPath, String fileName) async {
    File file;
    //Chech if a file is remote
    var fileStoragePath = p.join(destinationDirectoryPath, "$fileName");
    if (filePath.startsWith("http")) {
      var response = await http.get(Uri.parse(filePath));
      file = await File(fileStoragePath).create(recursive: true);
      await file.writeAsBytes(response.bodyBytes, flush: true);
    } else {
      file = File(filePath);

      if (Platform.isIOS || Platform.isAndroid) {
        MediaInfo? mediaInfo = await VideoCompress.compressVideo(
          filePath,
          quality: VideoQuality.HighestQuality,
          deleteOrigin: false,
        );

        if (mediaInfo != null) {
          File compressedFile = File(mediaInfo.path!);
          await compressedFile.copy(p.join(destinationDirectoryPath, "file.mp4"));
          return "file.mp4";
        }
      } else {
        await file.copy(fileStoragePath);
      }
    }

    return fileName;
  }
}
