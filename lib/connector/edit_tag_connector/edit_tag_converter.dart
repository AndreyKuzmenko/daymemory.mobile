import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/tag_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/tags/edit_tag/edit_tag_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditTagConverter extends ViewModelConverter<EditTagViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final String? tagId;

  final bool isSaving;

  final String? tagTitle;

  EditTagConverter({
    required this.dispatch,
    required this.locale,
    required this.tagId,
    required this.isSaving,
    required this.tagTitle,
  });

  @override
  EditTagViewModel build() {
    return EditTagViewModel((b) => b
      ..tagId = tagId
      ..isSaving = isSaving
      ..tagTitle = tagTitle
      ..title = tagId == null ? locale.edit_tag_new_title : locale.edit_tag_edit_title
      ..saveButtonTitle = locale.done_nav_button
      ..requiredFieldValidator = locale.required_field_validator
      ..titlePlaceholder = locale.edit_tag_title_placeholder
      ..titleChangedCommand = TypedFunctionHolder<String>((title) {
        dispatch(ChangeTagTitleAction(title: title));
      })
      ..saveCommand = FunctionHolder(() {
        if (tagId == null) {
          dispatch(CreateTagAction());
        }
      })
      ..closeCommand = FunctionHolder(() {
        dispatch(PopBackStackAction());
      }));
  }
}
