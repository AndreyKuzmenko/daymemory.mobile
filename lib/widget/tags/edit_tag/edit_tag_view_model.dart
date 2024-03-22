import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'edit_tag_view_model.g.dart';

abstract class EditTagViewModel implements Built<EditTagViewModel, EditTagViewModelBuilder> {
  String? get tagId;

  String? get tagTitle;

  String get title;

  String get titlePlaceholder;

  String get saveButtonTitle;

  String get requiredFieldValidator;

  bool get isSaving;

  TypedFunctionHolder<String> get titleChangedCommand;

  FunctionHolder get saveCommand;

  FunctionHolder get closeCommand;

  EditTagViewModel._();

  factory EditTagViewModel([void Function(EditTagViewModelBuilder) updates]) = _$EditTagViewModel;
}
