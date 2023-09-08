import 'dart:io';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/storage/file-storage/folder_resolver.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'tables.g.dart';

//https://drift.simonbinder.eu/docs/advanced-features/joins/

class DmNotes extends Table {
  TextColumn get id => text()();

  TextColumn get notebookId => text().references(DmNotebooks, #id, onDelete: KeyAction.noAction)();
  TextColumn get content => text().named('text')();
  DateTimeColumn get date => dateTime()();

  TextColumn get locationId => text().nullable().references(DmLocations, #id, onDelete: KeyAction.noAction)();

  DateTimeColumn get createdDate => dateTime()();
  DateTimeColumn get modifiedDate => dateTime()();

  BoolColumn get isNew => boolean()();
  BoolColumn get isChanged => boolean()();
  BoolColumn get isDeleted => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

class DmFiles extends Table {
  TextColumn get id => text()();
  TextColumn get fileName => text()();

  IntColumn get fileSize => integer()();
  IntColumn get fileType => integer()();

  IntColumn get width => integer()();
  IntColumn get height => integer()();

  TextColumn? get noteId => text().nullable().references(DmNotes, #id, onDelete: KeyAction.noAction)();
  IntColumn get orderRank => integer()();

  DateTimeColumn get createdDate => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

class DmTags extends Table {
  TextColumn get id => text()();
  TextColumn get content => text().named('text')();
  IntColumn get orderRank => integer()();
  DateTimeColumn get createdDate => dateTime()();
  DateTimeColumn get modifiedDate => dateTime()();

  BoolColumn get isNew => boolean()();
  BoolColumn get isChanged => boolean()();
  BoolColumn get isDeleted => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

class DmNoteTags extends Table {
  TextColumn get id => text()();

  TextColumn get noteId => text().references(DmNotes, #id, onDelete: KeyAction.noAction)();
  TextColumn get tagId => text().references(DmTags, #id, onDelete: KeyAction.noAction)();

  DateTimeColumn get createdDate => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

class DmNotebooks extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();

  DateTimeColumn get createdDate => dateTime()();
  DateTimeColumn get modifiedDate => dateTime()();
  IntColumn get orderRank => integer()();

  BoolColumn get showInReview => boolean()();
  BoolColumn get isDeleted => boolean()();
  BoolColumn get isNew => boolean()();
  BoolColumn get isChanged => boolean()();

  IntColumn get sortingType => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class NotebookWithNotesCount {
  final DmNotebook notebook;

  final int notesCount;

  NotebookWithNotesCount({required this.notebook, required this.notesCount});
}

class DmQuestionLists extends Table {
  TextColumn get id => text()();
  TextColumn get content => text().named('text')();
  IntColumn get orderRank => integer()();
  DateTimeColumn get createdDate => dateTime()();
  DateTimeColumn get modifiedDate => dateTime()();

  BoolColumn get isChanged => boolean()();
  BoolColumn get isDeleted => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

class DmQuestions extends Table {
  TextColumn get id => text()();
  TextColumn get content => text().named('text')();
  IntColumn get orderRank => integer()();
  DateTimeColumn get createdDate => dateTime()();

  TextColumn get questionList => text().references(DmQuestionLists, #id, onDelete: KeyAction.noAction)();

  @override
  Set<Column> get primaryKey => {id};
}

class DmLocations extends Table {
  TextColumn get id => text()();
  TextColumn get address => text()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  DateTimeColumn get createdDate => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await ServiceLocator.getIt.get<IFolderResolver>().getPathToDocuments();
    final file = File(p.join(dbFolder, 'day_memory_4.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [DmNotes, DmNotebooks, DmTags, DmNoteTags, DmLocations, DmQuestionLists, DmQuestions, DmFiles])
class DayMemoryDb extends _$DayMemoryDb {
  DayMemoryDb() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.createTable(dmNoteTags);
        }
      },
    );
  }

  //-----------------------
  //NOTES
  //-----------------------
  Future<List<DmNote>> getAllNotes(int? lastItemDateTime, int pageSize, String? notebookId, SortingType sortingType) async {
    DateTime lastDate = DateTime.now().add(const Duration(days: 1)).toUtc();
    if (lastItemDateTime != null) {
      lastDate = DateTime.fromMillisecondsSinceEpoch(lastItemDateTime);
    }

    var result = (select(dmNotes)..where((tbl) => tbl.isDeleted.equals(false))
        //..where((tbl) => tbl.notebookId | tbl.notebookId.equals(notebookId!))
        //..where((tbl) => tbl.content.contains(tag != null ? "#$tag" : ""))
        //..orderBy([(x) => OrderingTerm(expression: x.date, mode: OrderingMode.desc)])
        );

    if (sortingType == SortingType.byCreatedDate) {
      result.orderBy([(x) => OrderingTerm(expression: x.date, mode: OrderingMode.desc)]);
      result.where((tbl) => tbl.date.isSmallerThanValue(lastDate));
    } else {
      result.orderBy([(x) => OrderingTerm(expression: x.modifiedDate, mode: OrderingMode.desc)]);
      result.where((tbl) => tbl.modifiedDate.isSmallerThanValue(lastDate));
    }

    //result.where((tbl) => tbl.date.isSmallerThanValue(lastDate));

    if (notebookId != null) {
      result.where((tbl) => tbl.notebookId.equals(notebookId));
    }

    result.limit(pageSize);

    return await result.get();
  }

  Future<List<DmNote>> getAllNotesByNotebook(String notebookId, bool excludeDeleted) async {
    var result = (select(dmNotes)..where((tbl) => tbl.notebookId.equals(notebookId)));

    if (excludeDeleted) {
      result.where((tbl) => tbl.isDeleted.equals(false));
    }

    return await result.get();
  }

  Future<List<DmNote>> getNotesByDate(DateTime date) async {
    var query = (select(dmNotes).join([
      leftOuterJoin(dmNotebooks, dmNotebooks.id.equalsExp(dmNotes.notebookId)),
    ]))
      ..where(dmNotes.isDeleted.equals(false))
      ..where(dmNotebooks.showInReview.equals(true))
      ..where(dmNotes.date.year.equals(date.year) & dmNotes.date.month.equals(date.month) & dmNotes.date.day.equals(date.day))
      ..orderBy([OrderingTerm.desc(dmNotes.date)]);

    return await query.map((row) => row.readTable(dmNotes)).get();
  }

  Future<List<DmNote>> getNotesByDayAndMonth(int day, int month) async {
    var query = (select(dmNotes).join([
      leftOuterJoin(dmNotebooks, dmNotebooks.id.equalsExp(dmNotes.notebookId)),
    ]))
      ..where(dmNotes.isDeleted.equals(false))
      ..where(dmNotebooks.showInReview.equals(true))
      ..where(dmNotes.date.month.equals(month) & dmNotes.date.day.equals(day))
      ..orderBy([OrderingTerm.asc(dmNotes.date)]);

    return await query.map((row) => row.readTable(dmNotes)).get();
  }

  Future<List<DmNote>> fetchModifiedNotes() async {
    var result = await (select(dmNotes)
          ..orderBy([(x) => OrderingTerm(expression: x.date, mode: OrderingMode.desc)])
          ..where((tbl) => tbl.isDeleted.equals(false))
          ..where((tbl) => tbl.isChanged.equals(true)))
        .get();

    return result;
  }

  Future<List<DmNote>> fetchNewNotes() async {
    var result = await (select(dmNotes)
          ..orderBy([(x) => OrderingTerm(expression: x.date, mode: OrderingMode.desc)])
          ..where((tbl) => tbl.isDeleted.equals(false))
          ..where((tbl) => tbl.isNew.equals(true)))
        .get();

    return result;
  }

  Future<List<DmNote>> fetchDeletedNotes() async {
    var result = await (select(dmNotes)
          ..orderBy([(x) => OrderingTerm(expression: x.date, mode: OrderingMode.desc)])
          ..where((tbl) => tbl.isDeleted.equals(true)))
        .get();

    return result;
  }

  Future<DmNote?> getNoteById(String id) => (select(dmNotes)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future insertNote(DmNote item) => into(dmNotes).insert(item);
  Future updateNote(String itemId, String notebookId, String content, DateTime date, DateTime modifiedDate, String? locationId, bool isModified) =>
      (update(dmNotes)..where((x) => x.id.equals(itemId))).write(DmNotesCompanion(
        content: Value(content),
        notebookId: Value(notebookId),
        isChanged: Value(isModified),
        date: Value(date),
        modifiedDate: Value(modifiedDate.toUtc()),
        locationId: Value(locationId),
      ));

  Future markNoteAsDeleted(String itemId) => (update(dmNotes)..where((x) => x.id.equals(itemId))).write(DmNotesCompanion(
        isDeleted: const Value(true),
        modifiedDate: Value(DateTime.now().toUtc()),
      ));

  Future markNoteAsChanged(String itemId) => (update(dmNotes)..where((x) => x.id.equals(itemId))).write(DmNotesCompanion(
        isChanged: const Value(true),
        modifiedDate: Value(DateTime.now().toUtc()),
      ));

  Future resetIsChangedFlag(String itemId, DateTime modifiedDate) => (update(dmNotes)..where((x) => x.id.equals(itemId))).write(DmNotesCompanion(
        isChanged: const Value(false),
        isNew: const Value(false),
        modifiedDate: Value(modifiedDate.toUtc()),
      ));
  Future deleteNote(String id) => (delete(dmNotes)..where((x) => x.id.equals(id))).go();
  Future deleteAllNotes() => delete(dmNotes).go();

  //-----------------------
  //Notebooks
  //-----------------------
  Future<List<NotebookWithNotesCount>> getAllNotebooks() async {
    // var result = await (select(dmNotebooks)
    //       ..where((tbl) => tbl.isDeleted.equals(false))
    //       ..orderBy([(x) => OrderingTerm(expression: x.orderRank, mode: OrderingMode.asc)]))
    //     .get();

    final notesCount = dmNotes.id.count(filter: dmNotes.isDeleted.equals(false));
    final query = select(dmNotebooks).join([
      leftOuterJoin(dmNotes, dmNotes.notebookId.equalsExp(dmNotebooks.id)),
    ])
      ..where(dmNotebooks.isDeleted.equals(false))
      ..orderBy([OrderingTerm.asc(dmNotebooks.orderRank)]);
    query.addColumns([notesCount]);
    query.groupBy([dmNotebooks.id]);

    return await query.map((row) {
      var count = row.read(notesCount);
      var notebook = row.readTable(dmNotebooks);
      return NotebookWithNotesCount(notebook: notebook, notesCount: count ?? 0);
    }).get();
  }

  Future<List<DmNotebook>> fetchModifiedNotebooks() async {
    var result = await (select(dmNotebooks)
          ..where((tbl) => tbl.isDeleted.equals(false))
          ..where((tbl) => tbl.isChanged.equals(true)))
        .get();

    return result;
  }

  Future<List<DmNotebook>> fetchNewNotebooks() async {
    var result = await (select(dmNotebooks)
          ..where((tbl) => tbl.isDeleted.equals(false))
          ..where((tbl) => tbl.isNew.equals(true)))
        .get();

    return result;
  }

  Future<List<DmNotebook>> fetchDeletedNotebooks() async {
    var result = await (select(dmNotebooks)..where((tbl) => tbl.isDeleted.equals(true))).get();
    return result;
  }

  Future<DmNotebook?> getNotebookById(String id) => (select(dmNotebooks)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future insertNotebook(DmNotebook item) => into(dmNotebooks).insert(item);
  Future updateNotebook(
    String itemId,
    String content,
    DateTime modifiedDate,
    int orderRank,
    bool showInReview,
    bool isModified,
    SortingType sortingType,
  ) =>
      (update(dmNotebooks)..where((x) => x.id.equals(itemId))).write(DmNotebooksCompanion(
        title: Value(content),
        isChanged: Value(isModified),
        showInReview: Value(showInReview),
        orderRank: Value(orderRank),
        modifiedDate: Value(modifiedDate.toUtc()),
        sortingType: Value(sortingType.index),
      ));

  Future markNotebookAsDeleted(String itemId) => (update(dmNotebooks)..where((x) => x.id.equals(itemId))).write(DmNotebooksCompanion(
        isDeleted: const Value(true),
        modifiedDate: Value(DateTime.now().toUtc()),
      ));
  Future markNotebookAsChanged(String itemId) => (update(dmNotebooks)..where((x) => x.id.equals(itemId))).write(DmNotebooksCompanion(
        isChanged: const Value(true),
        modifiedDate: Value(DateTime.now().toUtc()),
      ));
  Future resetNotebookIsChangedFlag(String itemId, DateTime modifiedDate) => (update(dmNotebooks)..where((x) => x.id.equals(itemId))).write(DmNotebooksCompanion(
        isChanged: const Value(false),
        isNew: const Value(false),
        modifiedDate: Value(modifiedDate.toUtc()),
      ));
  Future deleteNotebook(String id) => (delete(dmNotebooks)..where((x) => x.id.equals(id))).go();
  Future deleteAllNotebooks() => delete(dmNotebooks).go();

  //-----------------------
  //Tag
  //-----------------------
  Future<List<DmTag>> getAllTags() async {
    var result = await (select(dmTags)
          ..orderBy([(x) => OrderingTerm(expression: x.orderRank, mode: OrderingMode.asc)])
          ..where((tbl) => tbl.isDeleted.equals(false)))
        .get();
    return result;
  }

  Future<List<DmTag>> fetchModifiedTags() async {
    var result = await (select(dmTags)
          ..where((tbl) => tbl.isDeleted.equals(false))
          ..where((tbl) => tbl.isChanged.equals(true)))
        .get();

    return result;
  }

  Future<List<DmTag>> fetchNewTags() async {
    var result = await (select(dmTags)
          ..where((tbl) => tbl.isDeleted.equals(false))
          ..where((tbl) => tbl.isNew.equals(true)))
        .get();

    return result;
  }

  Future<List<DmTag>> fetchDeletedTags() async {
    var result = await (select(dmTags)..where((tbl) => tbl.isDeleted.equals(true))).get();
    return result;
  }

  Future<DmTag?> getTagById(String id) => (select(dmTags)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future insertTag(DmTag item) => into(dmTags).insert(item);
  Future updateTag(String itemId, String content, int orderRank, DateTime modifiedDate, bool isModified) => (update(dmTags)..where((x) => x.id.equals(itemId))).write(DmTagsCompanion(
        content: Value(content),
        isChanged: Value(isModified),
        orderRank: Value(orderRank),
        modifiedDate: Value(modifiedDate.toUtc()),
      ));
  Future markTagAsChanged(String itemId) => (update(dmTags)..where((x) => x.id.equals(itemId))).write(DmTagsCompanion(
        isChanged: const Value(true),
        modifiedDate: Value(DateTime.now().toUtc()),
      ));
  Future markTagAsDeleted(String itemId) => (update(dmTags)..where((x) => x.id.equals(itemId))).write(DmTagsCompanion(
        isDeleted: const Value(true),
        modifiedDate: Value(DateTime.now().toUtc()),
      ));
  Future resetTagIsChangedFlag(String itemId, DateTime modifiedDate) => (update(dmTags)..where((x) => x.id.equals(itemId))).write(DmTagsCompanion(
        isChanged: const Value(false),
        isNew: const Value(false),
        modifiedDate: Value(modifiedDate.toUtc()),
      ));
  Future deleteTag(String id) => (delete(dmTags)..where((x) => x.id.equals(id))).go();
  Future deleteAllTags() => delete(dmTags).go();

  //-----------------------
  //LOCATION
  //-----------------------
  Future<DmLocation?> getLocationById(String id) => (select(dmLocations)..where((t) => t.id.equals(id))).getSingleOrNull();
  Future insertLocation(DmLocation item) => into(dmLocations).insert(item);
  Future deleteLocation(String id) => (delete(dmLocations)..where((x) => x.id.equals(id))).go();
  Future deleteAllLocations() => delete(dmLocations).go();
  //-----------------------
  //Files
  //-----------------------
  Future<List<DmFile>> getFilesForNote(String noteId) => (select(dmFiles)
        ..where((t) => t.noteId.equalsNullable(noteId))
        ..orderBy([(x) => OrderingTerm(expression: x.orderRank, mode: OrderingMode.asc)]))
      .get();

  Future insertFile(DmFile item) => into(dmFiles).insert(item);
  Future updateFilesOrderRank(String imageId, int orderRank) => (update(dmFiles)..where((x) => x.id.equals(imageId))).write(DmFilesCompanion(
        orderRank: Value(orderRank),
      ));

  Future deleteFile(String id) => (delete(dmFiles)..where((x) => x.id.equals(id))).go();
  Future deleteAllFiles() => delete(dmFiles).go();

  //-----------------------
  //NoteTags
  //-----------------------
  Future<List<DmNoteTag>> getTagsForNote(String noteId) => (select(dmNoteTags)
        ..where((t) => t.noteId.equalsNullable(noteId))
        ..orderBy([(x) => OrderingTerm(expression: x.createdDate, mode: OrderingMode.asc)]))
      .get();

  Future insertNoteTag(DmNoteTag item) => into(dmNoteTags).insert(item);

  Future deleteNoteTag(String id) => (delete(dmNoteTags)..where((x) => x.id.equals(id))).go();
  Future deleteAllNoteFiles() => delete(dmNoteTags).go();

  Future clearAllData() {
    return transaction(() async {
      for (final table in allTables) {
        await delete(table).go();
      }
    });
  }
}
