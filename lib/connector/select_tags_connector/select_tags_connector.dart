import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/select_tags_connector/select_tags_converter.dart';
import 'package:daymemory/widget/note/tags/select_tags_view_model.dart';
import 'package:daymemory/widget/note/tags/select_tags_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class SelectTagsConnector extends PageConnector<SelectTagsViewModel, SelectTagsConverter> {
  const SelectTagsConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, SelectTagsViewModel viewModel) => SelectTagsWidget(viewModel: viewModel);

  @override
  SelectTagsConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = SelectTagsConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      selectedTags: state.noteState.tags.toList(),
      tags: state.tagsState.tags,
    );
    return converter;
  }
}
