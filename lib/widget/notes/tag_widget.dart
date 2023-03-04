import 'package:daymemory/widget/notes/note_list_view.dart';
import 'package:daymemory/widget/notes/notes_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TagWidget extends StatelessWidget {
  final NotesViewModel viewModel;

  const TagWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
      appBar: AppBar(
          // actions: [
          //   if (viewModel.reviewCommand != null)
          //     GestureDetector(
          //       onTap: () {
          //         viewModel.reviewCommand!.command();
          //       },
          //       child: const Padding(
          //         padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
          //         child: Icon(Icons.play_arrow, size: 28.0, color: Colors.black),
          //       ),
          //     ),
          // ],
          leading: viewModel.backCommand == null
              ? null
              : GestureDetector(
                  onTap: () {
                    viewModel.backCommand!.command();
                  },
                  child: const Icon(Icons.arrow_back_ios, size: 28.0, color: Colors.black)),
          iconTheme: const IconThemeData(color: Colors.black),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(viewModel.title, style: appTheme.navigationTitle)),
      backgroundColor: appTheme.bodyBackgroundColor,
      body: SafeArea(
          bottom: false,
          top: false,
          child: NoteListView(
            viewModel: viewModel,
          )),
    );
  }
}
