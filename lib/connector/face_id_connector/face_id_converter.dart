import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/state/face_id_state/available_biometrics.dart';
import 'package:daymemory/widget/face_id/face_id_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/face_id_action.dart';
import '../../widget/common/function_holder.dart';

class FaceIdConverter extends ViewModelConverter<FaceIdViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final AvailableBiometrics availableBiometrics;

  FaceIdConverter({required this.dispatch, required this.locale, required this.availableBiometrics});

  @override
  FaceIdViewModel build() {
    return FaceIdViewModel(
      (b) => b
        ..subTitle = locale.face_id_subtitle
        ..allowFaceIdTitle = locale.allow_face_id
        ..skipTitle = locale.skip
        ..allowCommand = FunctionHolder(() => dispatch((AllowBiometricAction(
              reason: locale.face_id_reason,
              isFaceIdAllowed: true,
              isEnabledFromSettings: false,
            ))))
        ..skipCommand = FunctionHolder(() {
          if (availableBiometrics == AvailableBiometrics.faceAndFinger) {
            dispatch(NavigateToTouchIdAction());
          } else {
            dispatch(SkipBiometricAction());
          }
        }),
    );
  }
}
