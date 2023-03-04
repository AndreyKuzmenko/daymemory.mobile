import 'dart:async';
import 'package:daymemory/services/storage/database/db_creator.dart';
import 'package:daymemory/services/storage/file-storage/file_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_storage_service.dart';

class StorageService implements IStorageService {
  IFileService fileService;
  IDbCreator dbCreator;

  StorageService({required this.fileService, required this.dbCreator});

  @override
  Future clearAllData() async {
    await dbCreator.database.clearAllData();
    fileService.deleteAllFiles();
  }
}
