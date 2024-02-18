import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/note/tags/select_tags_form.dart';
import 'package:daymemory/widget/note/tags/select_tags_view_model.dart';

import 'package:flutter/material.dart';

class SelectTagsWidget extends StatelessWidget {
  const SelectTagsWidget({super.key, required this.viewModel});

  final SelectTagsViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          centerTitle: true,
          backgroundColor: Colors.white,
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
        body: SafeArea(
          bottom: false,
          top: false,
          child: SelectTagsForm(viewModel: viewModel),
        ));
  }
}
