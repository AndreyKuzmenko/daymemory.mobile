import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/rooted_device/rooted_device_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/access_denied/access_denied_view_model.dart';
import 'package:daymemory/widget/access_denied/access_denied_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootedDeviceConnector extends PageConnector<AccessDeniedViewModel, RootedDeviceConverter> {
  const RootedDeviceConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, AccessDeniedViewModel viewModel) => AccessDeniedWidget(viewModel: viewModel);

  @override
  RootedDeviceConverter prepareConverter(BuildContext context, AppState state, Function(dynamic action) dispatch) {
    final converter = RootedDeviceConverter(
      locale: AppLocalizations.of(context)!,
    );
    return converter;
  }
}
