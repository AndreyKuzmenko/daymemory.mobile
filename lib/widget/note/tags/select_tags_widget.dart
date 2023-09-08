import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/note/tags/select_tags_form.dart';
import 'package:daymemory/widget/note/tags/select_tags_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class SelectTagsWidget extends StatelessWidget {
  const SelectTagsWidget({Key? key, required this.viewModel}) : super(key: key);

  final SelectTagsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            viewModel.title,
            style: appTheme.navigationTitle,
          ),
          actions: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: NavButtonWidget(
                  onPressed: viewModel.closeCommand,
                  icon: Icons.close,
                )),
          ],
        ),
        backgroundColor: appTheme.bodyBackgroundColor,
        body: SafeArea(
          bottom: false,
          top: false,
          child: SelectTagsForm(viewModel: viewModel),
        ));
  }
}
