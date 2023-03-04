import 'package:daymemory/connector/view_model_converter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../redux/action/face_id_action.dart';
import '../../widget/common/function_holder.dart';
import '../../widget/touch_id/touch_id_view_model.dart';

class TouchIdConverter extends ViewModelConverter<TouchIdViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;

  TouchIdConverter({
    required this.dispatch,
    required this.locale,
  });

  @override
  TouchIdViewModel build() {
    return TouchIdViewModel(
      (b) => b
        ..subTitle = locale.face_id_subtitle
        ..allowTouchIdTitle = locale.allow_touch_id
        ..skipTitle = locale.skip
        ..allowCommand = FunctionHolder(() => dispatch((AllowBiometricAction(
              reason: locale.touch_id_reason,
              isFaceIdAllowed: false,
              isEnabledFromSettings: false,
            ))))
        ..skipCommand = FunctionHolder(() => dispatch((SkipBiometricAction()))),
    );
  }
}
