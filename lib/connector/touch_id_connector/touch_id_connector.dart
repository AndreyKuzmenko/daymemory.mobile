import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/touch_id_connector/touch_id_converter.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widget/touch_id/touch_id_view_model.dart';
import '../../widget/touch_id/touch_id_widget.dart';

class TouchIdConnector extends PageConnector<TouchIdViewModel, TouchIdConverter> {
  const TouchIdConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, TouchIdViewModel viewModel) => TouchIdWidget(viewModel: viewModel);

  @override
  TouchIdConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = TouchIdConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
    );
    return converter;
  }
}
