import 'dart:core';
import 'package:daymemory/data/dtos/tag_dto.dart';

abstract class ITagService {
  Future<TagDto?> fetchTag(String tagId);

  Future<List<TagDto>> fetchNewTags();

  Future<List<TagDto>> fetchModifiedTags();

  Future<List<TagDto>> fetchDeletedTags();

  Future<List<TagDto>> fetchTags();

  Future<TagDto> updateTag(
    String tagId,
    String text,
    int orderRank,
    DateTime modifiedDate,
    bool isModified,
  );

  Future<TagDto> createTag(
    String tagId,
    String text,
    int orderRank,
    DateTime createdDate,
    bool isNew,
  );

  Future markTagAsDeleted(String tagId);

  Future resetIsChangedFlag(String tagId, DateTime modifiedDate);

  Future<String> deleteTag(String tagId);
}
