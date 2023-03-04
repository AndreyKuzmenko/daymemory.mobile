import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/face_id_action.dart';
import 'package:daymemory/redux/action/notebooks_action.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/services/network/network_user_service.dart';
import 'enter_pin_action.dart';

final initialInstruction = JailbreakCheckAction(
  AppInitializationAction(
    LoadSettingsAction(
      CheckOnboardingAction(
        CheckBiometricTypeAction(
          TokenExtractAction(
            LoadNotebooksAction(
              nextAction: LoadTagsAction(
                nextAction: FirstScreenAction(),
              ),
            ),
          ),
        ),
      ),
    ),
  ),
);

TokenRefreshingAction loginInstruction(SigninResult model) => TokenRefreshingAction(
      model,
      TokenExtractAction(
        PopBackStackAction(),
      ),
    );

DelayedAction matchPinCodeInstruction(String pinCode) {
  return DelayedAction(
    delay: 100,
    nextAction: MatchPinAction(pinCode: pinCode),
  );
}
