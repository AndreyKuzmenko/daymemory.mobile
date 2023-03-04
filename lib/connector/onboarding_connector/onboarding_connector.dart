import 'package:daymemory/connector/onboarding_connector/onboarding_converter.dart';
import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/widget/onboarding/onboarding_view_model.dart';
import 'package:daymemory/widget/onboarding/onboarding_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnboardingConnector extends PageConnector<OnboardingViewModel, OnboardingConverter> {
  const OnboardingConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, OnboardingViewModel viewModel) => OnboardingWidget(viewModel: viewModel);

  @override
  OnboardingConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = OnboardingConverter(
      dispatch: dispatch,
      locale: AppLocalizations.of(context)!,
      currentPage: state.onBoardingState.currentPage,
      appName: AppThemeWidget.getConfigurationSettings(context).appName,
    );
    return converter;
  }
}
