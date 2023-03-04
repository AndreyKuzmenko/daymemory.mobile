import 'dart:core';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/services/storage/database/db_creator.dart';
import 'package:daymemory/services/storage/database/tables.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_notebook_service.dart';

class DbNotebookService implements INotebookService {
  IDbCreator dbCreator;
  INoteService noteService;

  DbNotebookService({
    required this.dbCreator,
    required this.noteService,
  });

  DbNotebookService init() {
    return this;
  }

  NotebookDto _convertFrom(DmNotebook item) {
    return NotebookDto(
      id: item.id,
      modifiedDate: item.modifiedDate.toUtc(),
      orderRank: item.orderRank,
      showInReview: item.showInReview,
      title: item.title,
      sortingType: SortingType.values[item.sortingType],
    );
  }

  @override
  Future<List<NotebookDto>> fetchNewNotebooks() async {
    var items = await dbCreator.database.fetchNewNotebooks();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<List<NotebookDto>> fetchModifiedNotebooks() async {
    var items = await dbCreator.database.fetchModifiedNotebooks();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<List<NotebookDto>> fetchDeletedNotebooks() async {
    var items = await dbCreator.database.fetchDeletedNotebooks();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<NotebookDto?> fetchNotebook(String noteId) async {
    var item = await dbCreator.database.getNotebookById(noteId);
    return item == null ? null : _convertFrom(item);
  }

  @override
  Future<List<NotebookDto>> fetchNotebooks() async {
    var items = await dbCreator.database.getAllNotebooks();
    return items.map((e) {
      var notebook = _convertFrom(e.notebook);
      notebook.notesCount = e.notesCount;
      return notebook;
    }).toList();
  }

  @override
  Future<NotebookDto> create(
    String notebookId,
    String title,
    DateTime createdDate,
    int orderRank,
    bool showInReview,
    bool isNew,
    SortingType sortingType,
  ) async {
    var item = DmNotebook(
      id: notebookId,
      title: title,
      createdDate: createdDate,
      modifiedDate: createdDate,
      orderRank: orderRank,
      showInReview: showInReview,
      isDeleted: false,
      isNew: isNew,
      isChanged: false,
      sortingType: sortingType.index,
    );

    await dbCreator.database.insertNotebook(item);
    var result = _convertFrom(item);
    return result;
  }

  @override
  Future<NotebookDto> update(String notebookId, String title, DateTime modifiedDate, int orderRank, bool showInReview, bool isModified, SortingType sortingType) async {
    var item = await dbCreator.database.getNotebookById(notebookId);
    if (item == null) {
      throw Exception("Notebook is not found");
    }

    await dbCreator.database.updateNotebook(item.id, title, modifiedDate, orderRank, showInReview, isModified, sortingType);
    item = await dbCreator.database.getNotebookById(notebookId);
    var result = _convertFrom(item!);

    return result;
  }

  @override
  Future markNotebookAsDeleted(String notebookId) async {
    var item = await dbCreator.database.getNotebookById(notebookId);
    if (item != null) {
      if (item.isNew) {
        await delete(item.id);
      } else {
        await dbCreator.database.markNotebookAsDeleted(notebookId);
      }
    }
  }

  @override
  Future markNotebookAsChanged(String notebookId) async {
    var item = await dbCreator.database.getNotebookById(notebookId);
    if (item != null) {
      await dbCreator.database.markNotebookAsChanged(notebookId);
    }
  }

  @override
  Future resetIsChangedFlag(String notebookId, DateTime modifiedDate) async {
    var item = await dbCreator.database.getNotebookById(notebookId);
    if (item != null) {
      await dbCreator.database.resetNotebookIsChangedFlag(notebookId, modifiedDate);
    }
  }

  @override
  Future<String> delete(String notebookId) async {
    var item = await dbCreator.database.getNotebookById(notebookId);
    if (item != null) {
      var notes = await dbCreator.database.getAllNotesByNotebook(notebookId, false);
      for (var note in notes) {
        await noteService.deleteNote(note.id);
      }
      await dbCreator.database.deleteNotebook(notebookId);
    }

    return notebookId;
  }
}
