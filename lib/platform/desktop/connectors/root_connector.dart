import 'package:daymemory/connector/connectors.dart';
import 'package:daymemory/platform/desktop/widgets/desktop_root_widget.dart';
import 'package:daymemory/widget/root/root_view_model.dart';
import 'package:flutter/material.dart';

class DesktopRootConnector extends RootConnector {
  const DesktopRootConnector({Key? key, required super.deviceType}) : super(key: key);

  @override
  Widget buildWidget(BuildContext context, RootViewModel viewModel) => DesktopRootWidget(viewModel: viewModel);
}
