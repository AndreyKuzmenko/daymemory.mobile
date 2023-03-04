import 'package:daymemory/widget/root/root_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class DesktopRootWidget extends RootWidget {
  const DesktopRootWidget({super.key, required viewModel}) : super(viewModel: viewModel);

  @override
  State<StatefulWidget> createState() => _RootState();
}

class _RootState extends RootState<DesktopRootWidget> with WindowListener {
  @override
  void onWindowClose() async {
    windowManager.destroy();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }
}
