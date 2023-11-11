import 'package:daymemory/redux/state/create_pin_state/create_pin_type.dart';
import 'package:daymemory/widget/common/buttons/nav_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter/material.dart';
import '../../common/shake_widget/shake_widget.dart';
import '../../theme/app_theme_widget.dart';
import '../keyboard_with_indicators_widget.dart';
import 'create_pin_view_model.dart';

class CreatePinWidget extends StatefulWidget {
  final CreatePinViewModel viewModel;
  final shakeKey = GlobalKey<ShakeWidgetState>();

  CreatePinWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<CreatePinWidget> createState() => _CreatePinWidgetState();
}

class _CreatePinWidgetState extends State<CreatePinWidget> {
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CreatePinWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      switch (widget.viewModel.createPinType) {
        case CreatePinType.openConfirm:
          _pageController.nextPage(
            duration: const Duration(milliseconds: 1),
            curve: Curves.linear,
          );
          break;
        case CreatePinType.openCreate:
          _pageController.jumpToPage(1);
          break;
        case CreatePinType.finish:
          widget.viewModel.successCommand.command();
          break;
        case CreatePinType.noMatch:
          widget.shakeKey.currentState?.shake();
          widget.viewModel.clearConfirmedPinCommand.command();
          break;
        case CreatePinType.confirm:
        case CreatePinType.create:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    var pageIndex = widget.viewModel.createPinType == CreatePinType.create ? 0 : 1;

    return Scaffold(
      appBar: AppBar(
        leading: pageIndex > 0
            ? NavButtonWidget(
                onPressed: FunctionHolder(() {
                  widget.viewModel.backCommand.command();
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 1),
                    curve: Curves.linear,
                  );
                }),
                icon: Icons.arrow_back_ios)
            : const SizedBox.shrink(),
        centerTitle: true,
        title: Text(widget.viewModel.titles[pageIndex.toInt()], style: appTheme.navigationTitle),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView.builder(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.center,
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 600,
                  maxWidth: 500,
                ),
                child: KeyboardWithIndicatorsWidget(
                  viewModel: widget.viewModel,
                  shakeKey: index == 1 ? widget.shakeKey : null,
                ),
              ),
            );
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
