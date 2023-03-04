import 'package:built_collection/built_collection.dart';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/onboarding_action.dart';
import 'package:daymemory/widget/onboarding/onboarding_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../gen/assets.gen.dart';
import '../../widget/common/function_holder.dart';

class OnboardingConverter extends ViewModelConverter<OnboardingViewModel> {
  final Function(dynamic) dispatch;
  final AppLocalizations locale;
  final int currentPage;
  final String appName;

  OnboardingConverter({
    required this.dispatch,
    required this.locale,
    required this.currentPage,
    required this.appName,
  });

  @override
  OnboardingViewModel build() {
    return OnboardingViewModel(
      (b) => b
        ..items = ListBuilder(
          [
            Assets.png.tutorial1.path,
            Assets.png.tutorial2.path,
            Assets.png.tutorial3.path,
            Assets.png.tutorial4.path,
            Assets.png.tutorial5.path,
          ],
        )
        ..currentPage = currentPage
        ..isLastPage = currentPage == 4
        ..titles = ListBuilder([
          locale.welcome(appName),
          locale.tutorial2_title,
          locale.tutorial3_title,
          locale.tutorial4_title,
          locale.tutorial5_title,
        ])
        ..subtitles = ListBuilder([
          locale.tutorial1_subtitle,
          locale.tutorial2_subtitle,
          locale.tutorial3_subtitle,
          locale.tutorial4_subtitle,
          locale.tutorial5_subtitle,
        ])
        ..getStartedTitle = locale.get_started
        ..nextTitle = locale.next
        ..skipTitle = locale.skip
        ..nextPageCommand = TypedFunctionHolder<int>(
          (index) => dispatch(OnBoardingNextPageAction(index: index)),
        )
        ..getStartedCommand = FunctionHolder(
          () => dispatch(OnBoardingGetStartedAction()),
        )
        ..skipCommand = FunctionHolder(
          () => dispatch(OnBoardingSkipAction()),
        ),
    );
  }
}
