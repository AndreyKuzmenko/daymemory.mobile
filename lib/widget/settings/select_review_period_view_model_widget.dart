import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/select_review_period_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:settings_ui/settings_ui.dart';

class SelectReviewPeriodWidget extends StatelessWidget {
  final SelectReviewPeriodViewModel viewModel;

  const SelectReviewPeriodWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          centerTitle: true,
          leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.arrow_back_ios),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(viewModel.title, style: appTheme.navigationTitle)),
      backgroundColor: appTheme.bodyBackgroundColor,
      body: SafeArea(
          bottom: false,
          top: false,
          child: _StateBodyWidget(
            viewModel: viewModel,
          )),
    );
  }
}

class _StateBodyWidget extends StatefulWidget {
  final SelectReviewPeriodViewModel viewModel;

  const _StateBodyWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<_StateBodyWidget> createState() => _StateBodyWidgetState();
}

class _StateBodyWidgetState extends State<_StateBodyWidget> {
  final ScrollController _scrollController = ScrollController();
  late SelectReviewPeriodViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel;
  }

  @override
  void didUpdateWidget(covariant _StateBodyWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel = widget.viewModel;
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      sections: [
        SettingsSection(tiles: [
          SettingsTile.switchTile(
            title: Text(_viewModel.yearlyOptionTitle, style: appTheme.settingsLabel),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.yearly, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.isYearlyEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(_viewModel.sixMonthsOptionTitle, style: appTheme.settingsLabel),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.sixMonths, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is6MonthsEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(_viewModel.threeMonthsOptionTitle, style: appTheme.settingsLabel),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.threeMonths, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is3MonthsEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(_viewModel.oneMonthOptionTitle, style: appTheme.settingsLabel),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.oneMonth, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is1MonthEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(_viewModel.tenDaysOptionTitle, style: appTheme.settingsLabel),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.tenDays, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is10DaysEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(_viewModel.sevenDaysOptionTitle, style: appTheme.settingsLabel),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.sevenDays, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is7DaysEnabled,
          ),
        ]),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
