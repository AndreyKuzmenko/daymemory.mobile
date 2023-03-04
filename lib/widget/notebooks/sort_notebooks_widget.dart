import 'package:daymemory/data/dtos/position_dto.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/components/empty_widget.dart';
import 'package:daymemory/widget/notebooks/sort_notebook_list_item.dart';
import 'package:daymemory/widget/notebooks/sort_notebooks_view_model.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SortNotebooksWidget extends StatelessWidget {
  final SortNotebooksViewModel viewModel;

  const SortNotebooksWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

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
          centerTitle: true,
          leading: NavButtonWidget(onPressed: viewModel.backCommand, icon: Icons.close),
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
  final SortNotebooksViewModel viewModel;

  const _StateBodyWidget({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<_StateBodyWidget> createState() => _StateBodyWidgetState();
}

class _StateBodyWidgetState extends State<_StateBodyWidget> {
  final ScrollController _scrollController = ScrollController();
  late SortNotebooksViewModel _viewModel;

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
    if (_viewModel.notebooks.isEmpty) {
      return EmptyWidget(
        text: _viewModel.noNotebooks,
      );
    }

    return ReorderableListView.builder(
      padding: EdgeInsets.only(right: _viewModel.showDragIcon ? 0 : 10),
      shrinkWrap: true,
      itemCount: _viewModel.notebooks.length,
      itemBuilder: (BuildContext context, int index) {
        return SortNotebookListItem(
          key: Key(_viewModel.notebooks[index].id),
          notebook: _viewModel.notebooks[index],
          showDragIcon: _viewModel.showDragIcon,
        );
      },
      onReorder: (int start, int current) {
        _viewModel.reorderCommand.command(ItemPositionDto(current, start));
      },
      scrollController: _scrollController,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
