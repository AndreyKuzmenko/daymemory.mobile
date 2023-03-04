import 'dart:core';
import 'package:daymemory/services/storage/database/tables.dart';

abstract class IDbCreator {
  DayMemoryDb get database;
}

class DbCreator implements IDbCreator {
  late DayMemoryDb db;

  DbCreator() {
    db = DayMemoryDb();
  }

  @override
  DayMemoryDb get database {
    return db;
  }
}
