import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/show_notebooks_in_review_connector/show_notebooks_in_review_converter.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/notebooks/show_notebooks_in_review_view_model.dart';
import 'package:daymemory/widget/notebooks/show_notebooks_in_review_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class ShowNotebooksInReviewConnector extends PageConnector<ShowNotebooksInReviewViewModel, ShowNotebooksInReviewConverter> {
  const ShowNotebooksInReviewConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, ShowNotebooksInReviewViewModel viewModel) => ShowNotebooksInReviewWidget(viewModel: viewModel);

  @override
  ShowNotebooksInReviewConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = ShowNotebooksInReviewConverter(
      dispatch: dispatch,
      showDragIcon: state.deviceState.deviceType != DeviceType.desktop,
      locale: AppLocalizations.of(context)!,
      notebooks: state.notebooksState.items,
    );
    return converter;
  }
}
