// ignore_for_file: unnecessary_string_interpolations

import 'dart:async';
import 'package:path_provider/path_provider.dart';

abstract class IFolderResolver {
  Future<String> getPathToDocuments();
}

class MobileFolderResolver implements IFolderResolver {
  @override
  Future<String> getPathToDocuments() async {
    var directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
}
