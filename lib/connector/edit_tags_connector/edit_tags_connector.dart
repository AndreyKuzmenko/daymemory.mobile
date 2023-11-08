import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/edit_tags_connector/edit_tags_converter.dart';
import 'package:daymemory/redux/action/tags_edit_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/tags/tags_view_model.dart';
import 'package:daymemory/widget/tags/tags_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditTagsConnector extends PageConnector<TagsViewModel, EditTagsConverter> {
  const EditTagsConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, TagsViewModel viewModel) => TagsWidget(viewModel: viewModel);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(LoadEditTagsAction());
  }

  @override
  EditTagsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = EditTagsConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      tags: state.editTagsState.tags,
      isSaving: state.questionListState.isSaving,
    );
    return converter;
  }
}
