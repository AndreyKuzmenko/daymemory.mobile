import 'package:daymemory/connector/connectors.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/components/empty_widget.dart';
import 'package:daymemory/widget/common/components/loading_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_view_model.dart';
import 'package:daymemory/widget/notes/notes_list_item.dart';
import 'package:daymemory/widget/review/review_category_view_model.dart';
import 'package:daymemory/widget/review/review_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';

import 'package:flutter/material.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({super.key, required this.viewModel});

  final ReviewViewModel viewModel;

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  var index = 0;
  Offset startDragPosition = Offset.zero;
  Offset endDragPosition = Offset.zero;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void didUpdateWidget(covariant ReviewWidget oldWidget) {
    if (!widget.viewModel.showDrawerMenu && oldWidget.viewModel.showDrawerMenu) {
      scaffoldKey.currentState?.closeDrawer();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: !widget.viewModel.showDrawerMenu
            ? const SizedBox.shrink()
            : NavButtonWidget(
                onPressed: FunctionHolder(() {
                  scaffoldKey.currentState?.openDrawer();
                }),
                icon: Icons.menu,
              ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          widget.viewModel.title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      drawer: widget.viewModel.showDrawerMenu
          ? const Drawer(
              elevation: 0,
              semanticLabel: "",
              child: SideMenuConnector(),
            )
          : null,
      body: SafeArea(
          bottom: false,
          top: false,
          child: widget.viewModel.isLoading
              ? LoadingWidget(text: widget.viewModel.loadingTitle)
              : Align(
                  alignment: Alignment.center,
                  child: widget.viewModel.items.isEmpty
                      ? EmptyWidget(
                          text: widget.viewModel.noItems,
                        )
                      : _ReviewCategoryList(
                          items: widget.viewModel.items,
                        ),
                )),
    );
  }
}

class _ReviewCategoryList extends StatelessWidget {
  const _ReviewCategoryList({
    required this.items,
  });

  final List<ReviewCategoryViewModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      shrinkWrap: false,
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: items.length,
      //controller: _scrollController,
      itemBuilder: (ctx, index) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 1, width: double.infinity, color: Theme.of(context).extension<ThemeColors>()!.accentColor!),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: Theme.of(context).extension<ThemeColors>()!.accentColor!,
                    ),
                    child: Text(
                      items[index].title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),
                    )),
              ],
            ),
            _NotesList(
              notes: items[index].notes,
            )
          ],
        );
      },
    );
  }
}

class _NotesList extends StatelessWidget {
  const _NotesList({
    required this.notes,
  });

  final List<NoteViewModel> notes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return Container(
          height: 1,
          color: Theme.of(context).dividerColor,
        );
      },
      itemCount: notes.length,
      //controller: _scrollController,
      itemBuilder: (ctx, index) {
        return NotesListItem(
          key: Key(notes[index].noteId),
          viewModel: notes[index],
        );
      },
    );
  }
}
