import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/select_review_period_connector/select_review_period_converter.dart';
import 'package:daymemory/widget/settings/select_review_period_view_model.dart';
import 'package:daymemory/widget/settings/select_review_period_view_model_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../redux/state/states.dart';

class SelectReviewPeriodConnector extends PageConnector<SelectReviewPeriodViewModel, SelectReviewPeriodConverter> {
  const SelectReviewPeriodConnector({Key? key}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, SelectReviewPeriodViewModel viewModel) => SelectReviewPeriodWidget(viewModel: viewModel);

  @override
  SelectReviewPeriodConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final converter = SelectReviewPeriodConverter(
      dispatch: dispatch,
      reviewSettings: state.settingsState.reviewSettings,
      locale: AppLocalizations.of(context)!,
    );
    return converter;
  }
}
