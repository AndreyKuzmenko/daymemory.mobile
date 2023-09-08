import 'dart:core';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/services/storage/database/db_creator.dart';
import 'package:daymemory/services/storage/database/tables.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';

class DbTagService implements ITagService {
  IDbCreator dbCreator;

  DbTagService({required this.dbCreator});

  DbTagService init() {
    return this;
  }

  TagDto _convertFrom(DmTag tag) {
    return TagDto(
      id: tag.id,
      orderRank: tag.orderRank,
      modifiedDate: tag.modifiedDate.toUtc(),
      text: tag.content,
    );
  }

  @override
  Future<List<TagDto>> fetchNewTags() async {
    var items = await dbCreator.database.fetchNewTags();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<List<TagDto>> fetchModifiedTags() async {
    var items = await dbCreator.database.fetchModifiedTags();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<List<TagDto>> fetchDeletedTags() async {
    var items = await dbCreator.database.fetchDeletedTags();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<TagDto?> fetchTag(String noteId) async {
    var tag = await dbCreator.database.getTagById(noteId);
    return tag == null ? null : _convertFrom(tag);
  }

  @override
  Future<List<TagDto>> fetchTags() async {
    var items = await dbCreator.database.getAllTags();
    return items.map((e) => _convertFrom(e)).toList();
  }

  @override
  Future<TagDto> createTag(String tagId, String text, int orderRank, DateTime createdDate, bool isNew) async {
    var tag = DmTag(
      id: tagId,
      content: text,
      createdDate: createdDate,
      modifiedDate: createdDate,
      isDeleted: false,
      isNew: isNew,
      isChanged: false,
      orderRank: orderRank,
    );

    await dbCreator.database.insertTag(tag);
    var result = _convertFrom(tag);
    return result;
  }

  @override
  Future<TagDto> updateTag(String tagId, String text, int orderRank, DateTime modifiedDate, bool isModified) async {
    var tag = await dbCreator.database.getTagById(tagId);
    if (tag == null) {
      throw Exception("Tag is not found");
    }

    await dbCreator.database.updateTag(tag.id, text, orderRank, modifiedDate, isModified);
    tag = await dbCreator.database.getTagById(tagId);
    var result = _convertFrom(tag!);

    return result;
  }

  @override
  Future markTagAsChanged(String tagId) async {
    var item = await dbCreator.database.getTagById(tagId);
    if (item != null) {
      await dbCreator.database.markTagAsChanged(tagId);
    }
  }

  @override
  Future markTagAsDeleted(String tagId) async {
    var tag = await dbCreator.database.getTagById(tagId);
    if (tag != null) {
      if (tag.isNew) {
        await dbCreator.database.deleteTag(tag.id);
      } else {
        await dbCreator.database.markTagAsDeleted(tagId);
      }
    }
  }

  @override
  Future resetIsChangedFlag(String tagId, DateTime modifiedDate) async {
    var item = await dbCreator.database.getTagById(tagId);
    if (item != null) {
      await dbCreator.database.resetTagIsChangedFlag(tagId, modifiedDate);
    }
  }

  @override
  Future<String> deleteTag(String tagId) async {
    var tag = await dbCreator.database.getTagById(tagId);
    if (tag != null) {
      await dbCreator.database.deleteTag(tagId);
    }

    return tagId;
  }
}
