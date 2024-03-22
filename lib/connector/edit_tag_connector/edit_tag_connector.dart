import 'package:daymemory/connector/edit_tag_connector/edit_tag_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/action/tag_action.dart';
import 'package:daymemory/widget/tags/edit_tag/edit_tag_view_model.dart';
import 'package:daymemory/widget/tags/edit_tag/edit_tag_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class EditTagConnector extends PageConnector<EditTagViewModel, EditTagConverter> {
  const EditTagConnector({super.key, required this.tagId});

  final String? tagId;

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    final tag = state.tagsState.tags.firstWhereOrNull((element) => element.id == tagId);

    dispatch(InitTagAction(
      tagId: tagId,
      title: tag?.text ?? "",
      orderRank: tag?.orderRank ?? state.tagsState.tags.length,
    ));
  }

  @override
  Widget buildWidget(BuildContext context, EditTagViewModel viewModel) => EditTagWidget(viewModel: viewModel);

  @override
  EditTagConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = EditTagConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      tagId: state.editTagState.tagId,
      tagTitle: state.editTagState.title,
      isSaving: state.editTagState.isSaving,
    );
    return converter;
  }
}
