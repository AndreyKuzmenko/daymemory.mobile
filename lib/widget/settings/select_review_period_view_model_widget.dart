import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/settings/select_review_period_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SelectReviewPeriodWidget extends StatelessWidget {
  final SelectReviewPeriodViewModel viewModel;

  const SelectReviewPeriodWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.arrow_back_ios),
          backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
          elevation: 0,
          title: Text(
            viewModel.title,
          )),
      backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
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
    required this.viewModel,
  });

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
    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      lightTheme: SettingsThemeData(
        settingsListBackground: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        settingsSectionBackground: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
        tileHighlightColor: Theme.of(context).highlightColor,
        dividerColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        leadingIconsColor: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor,
      ),
      darkTheme: SettingsThemeData(
        settingsListBackground: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        settingsSectionBackground: Theme.of(context).extension<ThemeColors>()!.backgroundPrimaryColor,
        tileHighlightColor: Theme.of(context).highlightColor,
        dividerColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        leadingIconsColor: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor,
      ),
      sections: [
        SettingsSection(tiles: [
          SettingsTile.switchTile(
            title: Text(
              _viewModel.yearlyOptionTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
            ),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.yearly, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.isYearlyEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(
              _viewModel.sixMonthsOptionTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
            ),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.sixMonths, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is6MonthsEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(
              _viewModel.threeMonthsOptionTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
            ),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.threeMonths, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is3MonthsEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(
              _viewModel.oneMonthOptionTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
            ),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.oneMonth, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is1MonthEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(
              _viewModel.tenDaysOptionTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
            ),
            onToggle: (value) {
              _viewModel.periodSelectorCommand.command(ReviewPeriodStatusDto(period: ReviewPeriod.tenDays, isEnabled: value));
            },
            initialValue: _viewModel.reviewSettings.is10DaysEnabled,
          ),
          SettingsTile.switchTile(
            title: Text(
              _viewModel.sevenDaysOptionTitle,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1),
            ),
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
