import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/components/empty_widget.dart';
import 'package:daymemory/widget/notebooks/show_notebooks_in_review_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:settings_ui/settings_ui.dart';

class ShowNotebooksInReviewWidget extends StatelessWidget {
  final ShowNotebooksInReviewViewModel viewModel;

  const ShowNotebooksInReviewWidget({
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
  final ShowNotebooksInReviewViewModel viewModel;

  const _StateBodyWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<_StateBodyWidget> createState() => _StateBodyWidgetState();
}

class _StateBodyWidgetState extends State<_StateBodyWidget> {
  final ScrollController _scrollController = ScrollController();
  late ShowNotebooksInReviewViewModel _viewModel;

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

    if (_viewModel.notebooks.isEmpty) {
      return EmptyWidget(
        text: _viewModel.noNotebooks,
      );
    }

    return SettingsList(
      applicationType: ApplicationType.cupertino,
      platform: DevicePlatform.iOS,
      sections: [
        SettingsSection(
            tiles: _viewModel.notebooks
                .map((x) => SettingsTile.switchTile(
                      title: Text(x.notebookTitle, style: appTheme.settingsLabel),
                      onToggle: (value) {
                        x.switchShowInReviewCommand.command(value);
                      },
                      initialValue: x.isEnabled,
                    ))
                .toList()),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
