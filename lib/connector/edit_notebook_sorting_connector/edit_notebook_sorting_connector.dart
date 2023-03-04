import 'package:daymemory/connector/edit_notebook_sorting_connector/edit_notebook_sorting_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/widget/settings/common/select_option_view_model.dart';
import 'package:daymemory/widget/settings/common/select_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class EditNotebookSortingConnector extends PageConnector<SelectOptionViewModel, EditNotebookSortingConverter> {
  const EditNotebookSortingConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, SelectOptionViewModel viewModel) => SelectOptionWidget(viewModel: viewModel);

  @override
  EditNotebookSortingConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = EditNotebookSortingConverter(
      dispatch: dispatch,
      sortingType: state.editNotebookState.sortingType,
      notebookId: state.editNotebookState.notebookId,
      locale: AppLocalizations.of(context)!,
    );
    return converter;
  }
}
