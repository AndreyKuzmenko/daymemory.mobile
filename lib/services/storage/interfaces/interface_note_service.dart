import 'dart:core';
import 'package:daymemory/data/dtos/file_dto.dart';
import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';

abstract class INoteService {
  Future<NoteDto?> fetchNote(String noteId);

  Future<List<NoteDto>> fetchNewNotes();

  Future<List<NoteDto>> fetchModifiedNotes();

  Future<List<NoteDto>> fetchDeletedNotes();

  Future<List<NoteDto>> fetchNotes(int? lastItemDateTime, int pageSize, String? notebookId, SortingType sortingType);

  Future<List<NoteDto>> fetchNotesByDate(DateTime date);

  Future<List<NoteDto>> fetchNotesByDayAndMonth(int day, int month);

  Future<NoteDto> updateNote(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    DateTime modifiedDate,
    List<FileDto> files,
    List<String> tags,
    LocationDto? location,
    bool isModified,
  );

  Future<NoteDto> createNote(
    String noteId,
    String notebookId,
    String text,
    DateTime date,
    DateTime createdDate,
    List<FileDto> files,
    List<String> tags,
    LocationDto? location,
    bool isNew,
  );

  Future markNoteAsDeleted(String noteId);

  Future markNoteAsChanged(String noteId);

  Future resetIsChangedFlag(String noteId, DateTime modifiedDate);

  Future<String> deleteNote(String noteId);
}
