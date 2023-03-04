import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'tag_field_view_model.g.dart';

abstract class TagFieldViewModel implements Built<TagFieldViewModel, TagFieldViewModelBuilder> {
  String get fieldId;

  String get text;

  String get placeholder;

  FunctionHolder? get deleteCommand;

  TypedFunctionHolder<String> get textChangedCommand;

  TagFieldViewModel._();

  factory TagFieldViewModel([void Function(TagFieldViewModelBuilder) updates]) = _$TagFieldViewModel;
}
