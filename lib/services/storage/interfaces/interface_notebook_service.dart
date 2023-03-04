import 'dart:core';
import 'package:daymemory/data/dtos/notebook_dto.dart';

abstract class INotebookService {
  Future<NotebookDto?> fetchNotebook(String notebookId);

  Future<List<NotebookDto>> fetchNewNotebooks();

  Future<List<NotebookDto>> fetchModifiedNotebooks();

  Future<List<NotebookDto>> fetchDeletedNotebooks();

  Future<List<NotebookDto>> fetchNotebooks();

  Future<NotebookDto> update(
    String notebookId,
    String text,
    DateTime modifiedDate,
    int orderRank,
    bool showInReview,
    bool isModified,
    SortingType sortingType,
  );

  Future<NotebookDto> create(
    String notebookId,
    String text,
    DateTime createdDate,
    int orderRank,
    bool showInReview,
    bool isNew,
    SortingType sortingType,
  );

  Future markNotebookAsDeleted(String notebookId);

  Future markNotebookAsChanged(String notebookId);

  Future resetIsChangedFlag(String notebookId, DateTime modifiedDate);

  Future<String> delete(String notebookId);
}
