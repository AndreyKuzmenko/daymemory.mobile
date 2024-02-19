import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/note/select_notebook_form.dart';
import 'package:daymemory/widget/note/select_notebook_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/material.dart';

class SelectNotebookWidget extends StatelessWidget {
  const SelectNotebookWidget({super.key, required this.viewModel});

  final SelectNotebookViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          centerTitle: true,
          backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
          elevation: 0,
          title: Text(
            viewModel.title,
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
        backgroundColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        body: SafeArea(
          bottom: false,
          top: false,
          child: SelectNotebookForm(viewModel: viewModel),
        ));
  }
}
