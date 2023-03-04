import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'edit_notebook_view_model.g.dart';

abstract class EditNotebookViewModel implements Built<EditNotebookViewModel, EditNotebookViewModelBuilder> {
  String? get notebookId;

  String? get notebookTitle;

  String get title;

  String get titlePlaceholder;

  String get doneButtonTitle;

  String get deleteButtonTitle;

  String get sortByOption;

  String get sortByOptionValue;

  FunctionHolder get selectSortingTypeCommand;

  String get saveButtonTitle;

  String get requiredFieldValidator;

  bool get isSaving;

  TypedFunctionHolder<String> get saveCommand;

  FunctionHolder get closeCommand;

  FunctionHolder get deleteCommand;

  EditNotebookViewModel._();

  factory EditNotebookViewModel([void Function(EditNotebookViewModelBuilder) updates]) = _$EditNotebookViewModel;
}
