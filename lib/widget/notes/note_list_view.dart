import 'package:daymemory/widget/common/components/empty_widget.dart';
import 'package:daymemory/widget/common/components/loading_widget.dart';
import 'package:daymemory/widget/common/loading_indicator/loading_indicator.dart';
import 'package:daymemory/widget/notes/notes_list_item.dart';
import 'package:daymemory/widget/notes/notes_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:scrolls_to_top/scrolls_to_top.dart';

class NoteListView extends StatefulWidget {
  final NotesViewModel viewModel;

  const NoteListView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  final ScrollController _scrollController = ScrollController();
  late NotesViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel;
  }

  @override
  void didUpdateWidget(covariant NoteListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _viewModel = widget.viewModel;

    if (_viewModel.isScrollToTopEnabled && !oldWidget.viewModel.isScrollToTopEnabled) {
      _scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }

    if (_viewModel.notebookId != oldWidget.viewModel.notebookId && _viewModel.noteList.isNotEmpty && _scrollController.positions.isNotEmpty) {
      _scrollController.animateTo(0, duration: const Duration(milliseconds: 1), curve: Curves.ease);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    if (widget.viewModel.isLoading) {
      return LoadingWidget(text: widget.viewModel.loadingTitle);
    } else {
      return Stack(
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: _handleScrollNotification,
            child: RefreshIndicator(
              onRefresh: () async {
                widget.viewModel.refreshCommand.command();
              },
              child: ScrollsToTop(
                child: widget.viewModel.noteList.isEmpty
                    ? EmptyWidget(
                        text: widget.viewModel.noNotes,
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        //shrinkWrap: true,
                        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                        separatorBuilder: (context, index) {
                          return Container(height: 1, color: appTheme.itemSeparatorColor);
                        },
                        itemCount: _viewModel.isAllItemsLoaded ? _viewModel.noteList.length : _viewModel.noteList.length + 1,
                        controller: _scrollController,
                        itemBuilder: (ctx, index) {
                          return index >= _viewModel.noteList.length
                              ? Container(
                                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: LoadingIndicator(brandingColor: appTheme.colorAccent),
                                )
                              : NotesListItem(
                                  key: Key(_viewModel.noteList[index].noteId),
                                  viewModel: _viewModel.noteList[index],
                                );
                        },
                      ),
                onScrollsToTop: (ScrollsToTopEvent event) async {
                  _scrollController.animateTo(
                    event.to,
                    duration: event.duration,
                    curve: event.curve,
                  );
                },
              ),
            ),
          ),
        ],
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        notification.metrics.extentBefore + 200 >= notification.metrics.maxScrollExtent &&
        !widget.viewModel.isAllItemsLoaded &&
        !widget.viewModel.isLoadingMore) {
      widget.viewModel.loadMoreCommand.command();
    }
    return false;
  }
}
