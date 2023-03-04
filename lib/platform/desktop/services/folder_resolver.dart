import 'dart:async';
import 'dart:io';
import 'package:daymemory/services/storage/file-storage/folder_resolver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class DesktopFolderResolver implements IFolderResolver {
  @override
  Future<String> getPathToDocuments() async {
    var directory = await getApplicationDocumentsDirectory();
    var documentPath = p.join(directory.path, "DayMemory");
    var d = Directory(documentPath);
    if (!await d.exists()) {
      await d.create();
    }
    return d.path;
    // var dir = Platform.resolvedExecutable;
    // dir = dir.substring(0, dir.lastIndexOf('\\'));
    // return Future(() => dir);
  }
}
