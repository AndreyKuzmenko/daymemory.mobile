import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/settings_action.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/settings/select_review_period_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SelectReviewPeriodConverter extends ViewModelConverter<SelectReviewPeriodViewModel> {
  final Function(dynamic) dispatch;

  final AppLocalizations locale;

  final StorageReviewSettings reviewSettings;

  SelectReviewPeriodConverter({
    required this.dispatch,
    required this.locale,
    required this.reviewSettings,
  });

  @override
  SelectReviewPeriodViewModel build() {
    return SelectReviewPeriodViewModel((b) => b
      ..title = locale.select_review_period_title
      ..yearlyOptionTitle = locale.review_yearly
      ..sixMonthsOptionTitle = locale.review_half_year
      ..threeMonthsOptionTitle = locale.review_three_months
      ..oneMonthOptionTitle = locale.review_month
      ..tenDaysOptionTitle = locale.review_10_days
      ..sevenDaysOptionTitle = locale.review_7_days
      ..periodSelectorCommand = TypedFunctionHolder((data) {
        dispatch(UpdateReviewSettingsAction(period: data.period, isEnabled: data.isEnabled));
      })
      ..reviewSettings = reviewSettings
      ..backCommand = FunctionHolder(() => dispatch(PopBackStackAction())));
  }
}
