import 'package:daymemory/connector/face_id_connector/face_id_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/face_id/face_id_view_model.dart';
import 'package:daymemory/widget/face_id/face_id_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FaceIdConnector extends PageConnector<FaceIdViewModel, FaceIdConverter> {
  const FaceIdConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, FaceIdViewModel viewModel) => FaceIdWidget(viewModel: viewModel);

  @override
  FaceIdConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = FaceIdConverter(
      dispatch: dispatch,
      availableBiometrics: state.faceIdState.availableBiometrics,
      locale: AppLocalizations.of(context)!,
    );
    return converter;
  }
}
