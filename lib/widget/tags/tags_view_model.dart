import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/tags/tag_field_view_model.dart';

part 'tags_view_model.g.dart';

abstract class TagsViewModel implements Built<TagsViewModel, TagsViewModelBuilder> {
  String? get tagId;

  bool get isSaving;

  String get title;

  BuiltList<TagFieldViewModel> get items;

  FunctionHolder get addTagCommand;

  TypedFunctionHolder<ItemPositionDto> get reorderCommand;

  FunctionHolder get saveCommand;

  FunctionHolder get closeCommand;

  TagsViewModel._();

  factory TagsViewModel([void Function(TagsViewModelBuilder) updates]) = _$TagsViewModel;
}
