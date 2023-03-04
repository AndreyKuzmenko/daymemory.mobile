import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/sort_notebooks_connector/sort_notebooks_converter.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/notebooks/sort_notebooks_view_model.dart';
import 'package:daymemory/widget/notebooks/sort_notebooks_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class SortNotebooksConnector extends PageConnector<SortNotebooksViewModel, SortNotebooksConverter> {
  const SortNotebooksConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, SortNotebooksViewModel viewModel) => SortNotebooksWidget(viewModel: viewModel);

  @override
  SortNotebooksConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = SortNotebooksConverter(
      dispatch: dispatch,
      showDragIcon: state.deviceState.deviceType != DeviceType.desktop,
      locale: AppLocalizations.of(context)!,
      notebooks: state.notebooksState.items,
    );
    return converter;
  }
}
