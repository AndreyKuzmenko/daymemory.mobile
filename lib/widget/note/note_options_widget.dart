import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/note/note_options_form.dart';
import 'package:daymemory/widget/note/note_options_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class NoteOptionsWidget extends StatelessWidget {
  const NoteOptionsWidget({super.key, required this.viewModel});

  final NoteOptionsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          actions: [
            Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: NavButtonWidget(
                  onPressed: viewModel.closeCommand,
                  icon: Icons.close,
                )),
          ],
          title: Text(
            viewModel.title,
            style: appTheme.navigationTitle,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: appTheme.bodyBackgroundColor,
        body: SafeArea(
          bottom: false,
          top: false,
          child: NoteOptionsForm(viewModel: viewModel),
        ));
  }
}
