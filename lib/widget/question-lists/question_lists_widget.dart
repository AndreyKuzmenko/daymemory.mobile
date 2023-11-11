import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/loading_indicator/loading_indicator.dart';
import 'package:daymemory/widget/question-lists/question_lists_view_model.dart';
import 'package:daymemory/widget/question-lists/questions_list_item.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionListsWidget extends StatelessWidget {
  final QuestionListsViewModel viewModel;

  const QuestionListsWidget({
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
          actions: [
            GestureDetector(
              onTap: () {
                viewModel.newQuestionListCommand.command();
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Icon(Icons.add, size: 28.0, color: Colors.black),
              ),
            )
          ],
          centerTitle: true,
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
  final QuestionListsViewModel viewModel;

  const _StateBodyWidget({
    required this.viewModel,
  });

  @override
  State<_StateBodyWidget> createState() => _StateBodyWidgetState();
}

class _StateBodyWidgetState extends State<_StateBodyWidget> {
  final ScrollController _scrollController = ScrollController();
  late QuestionListsViewModel _viewModel;

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
    if (widget.viewModel.isLoading) {
      return FractionallySizedBox(
        heightFactor: 0.9,
        alignment: Alignment.topCenter,
        child: LoadingIndicator(
          message: widget.viewModel.loadingTitle,
          brandingColor: appTheme.colorAccent,
        ),
      );
    } else {
      return NotificationListener<ScrollNotification>(
        child: RefreshIndicator(
          onRefresh: () async {
            widget.viewModel.refreshCommand.command();
          },
          child: ReorderableListView.builder(
            shrinkWrap: true,
            itemCount: _viewModel.questionLists.length,
            itemBuilder: (BuildContext context, int index) {
              return QuestionsListItem(
                key: Key(_viewModel.questionLists[index].questionListId),
                viewModel: _viewModel.questionLists[index],
              );
            },
            onReorder: (int start, int current) {
              _viewModel.reorderCommand.command(ItemPositionDto(current, start));
            },
            scrollController: _scrollController,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
