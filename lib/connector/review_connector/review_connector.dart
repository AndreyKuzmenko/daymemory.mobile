import 'package:daymemory/connector/page_connector.dart';
import 'package:daymemory/connector/review_connector/review_converter.dart';
import 'package:daymemory/redux/action/reviews_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/widget/review/review_view_model.dart';
import 'package:daymemory/widget/review/review_widget.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReviewConnector extends PageConnector<ReviewViewModel, ReviewConverter> {
  const ReviewConnector({super.key});

  @override
  Widget buildWidget(BuildContext context, ReviewViewModel viewModel) => ReviewWidget(viewModel: viewModel);

  @override
  void onInit(BuildContext context, AppState state, Function dispatch) {
    super.onInit(context, state, dispatch);
    dispatch(LoadReviewsAction());
  }

  @override
  ReviewConverter prepareConverter(BuildContext context, AppState state, Function(dynamic) dispatch) {
    final reviewsState = state.reviewsState;
    Locale locale = Localizations.localeOf(context);
    var settings = AppThemeWidget.getConfigurationSettings(context);

    final converter = ReviewConverter(
      loc: AppLocalizations.of(context)!,
      locale: locale,
      dispatch: dispatch,
      isLoading: reviewsState.isLoading,
      items: reviewsState.items,
      notebooks: state.notebooksState.items,
      showContextMenu: state.deviceState.deviceWidthType == DeviceWidthType.wide,
      isFullscreen: state.deviceState.deviceWidthType == DeviceWidthType.wide && state.deviceState.size.width >= settings.fullscreenMinWidth + settings.sideMenuWidth + 20,
      showDrawerMenu: state.deviceState.deviceWidthType == DeviceWidthType.narrow,
      totalItems: reviewsState.items.length,
    );
    return converter;
  }
}
