import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/side_menu_connector/side_menu_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/side_menu/side_menu_view_model/side_menu_view_model.dart';
import 'package:daymemory/widget/side_menu/side_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SideMenuConnector extends PageConnector<SideMenuViewModel, SideMenuConverter> {
  const SideMenuConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, SideMenuViewModel viewModel) => SideMenuWidget(viewModel: viewModel);

  @override
  SideMenuConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = SideMenuConverter(
      dispatch: dispatch,
      notebooks: state.notebooksState.items,
      isStatic: state.deviceState.deviceWidthType == DeviceWidthType.wide,
      isDesktop: state.deviceState.deviceType == DeviceType.desktop,
      hasError: state.syncState.hasLastSyncSucceeded != null && !state.syncState.hasLastSyncSucceeded!,
      locale: AppLocalizations.of(context)!,
      selectedMenuItemId: state.selectedMenuItemState.itemId,
    );
    return converter;
  }
}
