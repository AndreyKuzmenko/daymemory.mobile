import 'package:daymemory/connector/connectors.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/components/empty_widget.dart';
import 'package:daymemory/widget/common/components/loading_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notes/note_view_model.dart';
import 'package:daymemory/widget/notes/notes_list_item.dart';
import 'package:daymemory/widget/review/review_category_view_model.dart';
import 'package:daymemory/widget/review/review_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({Key? key, required this.viewModel}) : super(key: key);

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
    final appTheme = AppThemeWidget.getTheme(context);
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
      backgroundColor: appTheme.bodyBackgroundColor,
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
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<ReviewCategoryViewModel> items;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

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
                Container(height: 1, width: double.infinity, color: appTheme.colorAccent),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: appTheme.colorAccent,
                    ),
                    child: Text(
                      items[index].title,
                      style: appTheme.medium16.copyWith(color: appTheme.white),
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
    Key? key,
    required this.notes,
  }) : super(key: key);

  final List<NoteViewModel> notes;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) {
        return Container(height: 1, color: appTheme.itemSeparatorColor);
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
/*
class _ReviewForm extends StatefulWidget {
  final ReviewViewModel viewModel;

  const _ReviewForm({required this.viewModel});

  @override
  State<_ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<_ReviewForm> {
  late PageController _pageController;
  late int pageIndex = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: pageIndex, viewportFraction: widget.viewModel.showNavigation ? 1 : 1.05);
    _pageController.addListener(() {
      var index = _pageController.page!.round();
      if (index != pageIndex) {
        setState(() {
          pageIndex = index;
        });
      }
    });
  }

  _onTapUp(TapUpDetails details) {
    var x = details.globalPosition.dx;

    var widgetWidth = MediaQuery.of(context).size.width;

    if (x > widgetWidth / 2) {
      _goToNextPage();
    } else {
      _goToPrevPage();
    }
  }

  void _goToPrevPage() {
    if (pageIndex == 0) return;

    _pageController.previousPage(duration: const Duration(milliseconds: 1), curve: Curves.ease);
    setState(() {
      pageIndex -= 1;
    });
  }

  void _goToNextPage() {
    if (pageIndex == widget.viewModel.items.length - 1) {
      widget.viewModel.closeCommand.command();
      return;
    }

    _pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.ease);
    setState(() {
      pageIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var item = widget.viewModel.items[pageIndex];
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapUp: (TapUpDetails details) => _onTapUp(details),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: ReviewProgress(currentStep: pageIndex + 1, numberOfSteps: widget.viewModel.items.length),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                item.title,
                                style: const TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                              child: Text(
                                DateFormat('dd.MM.yyyy').format(item.date.toLocal()),
                                style: const TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: PageView.builder(
                              controller: _pageController,
                              itemCount: widget.viewModel.items.length,
                              itemBuilder: (context, index) {
                                var pageItem = widget.viewModel.items[index];
                                return ListView(
                                  padding: EdgeInsets.fromLTRB(widget.viewModel.showNavigation ? 0 : 10, 0, widget.viewModel.showNavigation ? 0 : 10, 30),
                                  children: [
                                    if (pageItem.file != null)
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                        child: _PageMediaFile(
                                          file: pageItem.file!,
                                        ),
                                        //IMPLEMENT VIDEO
                                      ),
                                    HtmlViewer(
                                      pageItem.text,
                                      scaleFactor: 1.2,
                                    ),
                                    if (item.location != null)
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              size: 16,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              item.location?.address ?? '',
                                              style: const TextStyle(color: Colors.grey, fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                    // _ReviewForm(
                    //   viewModel: widget.viewModel,
                    // ),
                    widget.viewModel.items.isEmpty || !widget.viewModel.showNavigation
                        ? const SizedBox.shrink()
                        : PageNavigation(
                            pageController: _pageController,
                            pageIndex: pageIndex,
                            pageTransitionDuration: 1,
                            pageCount: widget.viewModel.items.length,
                            onPageChanged: (page) {
                              setState(() {
                                pageIndex = page;
                              });
                            },
                          )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class _PageMediaFile extends StatefulWidget {
  final FileViewModel file;

  const _PageMediaFile({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  State<_PageMediaFile> createState() => _PageMediaFileState();
}

class _PageMediaFileState extends State<_PageMediaFile> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    if (!Platform.isAndroid && !Platform.isIOS && widget.file.fileType == FileType.video) {
      return const SizedBox(height: 400, child: VideoIsNotSupported());
    }

    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      var height = widget.file.height / widget.file.width * constraints.maxWidth;

      return Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 0),
          decoration: BoxDecoration(
            color: Colors.black.withAlpha(15),
          ),
          child: FadeTransition(
            opacity: _animationController.drive(
              CurveTween(curve: Curves.easeOut),
            ),
            child: _PageItem(file: widget.file, height: height),
          ));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class _PageItem extends StatelessWidget {
  const _PageItem({
    Key? key,
    required this.file,
    required this.height,
  }) : super(key: key);

  final FileViewModel file;
  final double height;

  @override
  Widget build(BuildContext context) {
    if (file.fileType == FileType.video) {
      return VideoFilePlayer(
        file: file,
      );
    }
    return Image(
      image: FileImage(File(file.filePath)),
      gaplessPlayback: true,
      fit: BoxFit.fitWidth,
      height: height,
    );
  }
}
*/