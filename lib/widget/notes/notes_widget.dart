import 'package:daymemory/connector/side_menu_connector/side_menu_connector.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_list_view.dart';
import 'package:daymemory/widget/notes/notes_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotesWidget extends StatefulWidget {
  final NotesViewModel viewModel;

  const NotesWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<NotesWidget> createState() => _NotesWidgetState();
}

class _NotesWidgetState extends State<NotesWidget> with WidgetsBindingObserver {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // @override
  // void didChangeMetrics() {
  //   scaffoldKey.currentState?.closeDrawer();
  // }

  @override
  void didUpdateWidget(covariant NotesWidget oldWidget) {
    if (!widget.viewModel.showDrawerMenu && oldWidget.viewModel.showDrawerMenu) {
      scaffoldKey.currentState?.closeDrawer();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        actions: [
          widget.viewModel.editNotebookCommand != null
              ? NavButtonWidget(
                  icon: Icons.more_horiz,
                  onPressed: widget.viewModel.editNotebookCommand,
                )
              : const SizedBox(
                  width: 40,
                ),
        ],
        leading: !widget.viewModel.showDrawerMenu
            ? const SizedBox()
            : NavButtonWidget(
                onPressed: FunctionHolder(() {
                  scaffoldKey.currentState?.openDrawer();
                }),
                icon: Icons.menu,
              ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                overflow: TextOverflow.fade,
                widget.viewModel.title,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: widget.viewModel.newNoteCommand == null || widget.viewModel.notebookId == null
          ? null
          : FloatingActionButton(
              backgroundColor: appTheme.colorAccent,
              child: const Icon(Icons.add, size: 28.0, color: Colors.white),
              onPressed: () {
                widget.viewModel.newNoteCommand!.command();
              },
            ),
      drawer: widget.viewModel.showDrawerMenu
          ? const Drawer(
              elevation: 0,
              semanticLabel: "",
              child: SideMenuConnector(),
            )
          : null,
      backgroundColor: appTheme.bodyBackgroundColor,
      body: SafeArea(
          bottom: false,
          top: false,
          child: NoteListView(
            viewModel: widget.viewModel,
          )),
    );
  }
}
