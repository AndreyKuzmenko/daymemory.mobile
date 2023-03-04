import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/tag_dto.dart';

part 'tags_state.g.dart';

abstract class TagsState implements Built<TagsState, TagsStateBuilder> {
  List<TagDto> get tags;

  TagsState._();

  factory TagsState([void Function(TagsStateBuilder) updates]) = _$TagsState;

  factory TagsState.initial() => TagsState((b) => b..tags = []);
}
