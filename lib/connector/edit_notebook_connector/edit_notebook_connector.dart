import 'package:daymemory/connector/edit_notebook_connector/edit_notebook_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/data/dtos/notebook_dto.dart';
import 'package:daymemory/redux/action/notebook_action.dart';
import 'package:daymemory/widget/edit_notebook/edit_notebook_view_model.dart';
import 'package:daymemory/widget/edit_notebook/edit_notebook_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';
// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';

class EditNotebookConnector extends PageConnector<EditNotebookViewModel, EditNotebookConverter> {
  const EditNotebookConnector({Key? key, required this.notebookId}) : super(key: key);

  final String? notebookId;

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    final notebook = state.notebooksState.items.firstWhereOrNull((element) => element.id == notebookId);

    dispatch(InitNotebookAction(
      notebookId: notebookId,
      title: notebook?.title ?? "",
      sortingType: notebook?.sortingType ?? SortingType.byCreatedDate,
      orderRank: notebook?.orderRank ?? state.notebooksState.items.length,
      showInReview: notebook?.showInReview ?? false,
    ));
  }

  @override
  Widget buildWidget(BuildContext context, EditNotebookViewModel viewModel) => EditNotebookWidget(viewModel: viewModel);

  @override
  EditNotebookConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = EditNotebookConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      notebookId: state.editNotebookState.notebookId,
      notebookTitle: state.editNotebookState.title,
      isSaving: state.editNotebookState.isSaving,
      sortingType: state.editNotebookState.sortingType,
      orderRank: state.editNotebookState.orderRank,
    );
    return converter;
  }
}
