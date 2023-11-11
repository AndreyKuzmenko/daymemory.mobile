import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'select_tags_view_model.g.dart';

abstract class SelectTagsViewModel implements Built<SelectTagsViewModel, SelectTagsViewModelBuilder> {
  List<String> get selectedTags;

  String get newTagMenuOption;

  BuiltList<TagDto> get tags;

  String get title;

  FunctionHolder get closeCommand;

  FunctionHolder get newTagCommand;

  TypedFunctionHolder<String> get toogleTagCommand;

  SelectTagsViewModel._();

  factory SelectTagsViewModel([void Function(SelectTagsViewModelBuilder) updates]) = _$SelectTagsViewModel;
}
