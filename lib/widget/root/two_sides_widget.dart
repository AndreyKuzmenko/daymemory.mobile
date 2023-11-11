import 'package:daymemory/connector/side_menu_connector/side_menu_connector.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/widget/root/root_view_model.dart';
import 'package:daymemory/widget/root/root_widget.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class TwoSidesWidget extends StatefulWidget {
  final RootViewModel viewModel;

  const TwoSidesWidget({super.key, required this.viewModel});

  @override
  State<StatefulWidget> createState() => _TwoSidesState();
}

class _TwoSidesState extends State<TwoSidesWidget> with WidgetsBindingObserver, WindowListener {
  @override
  Widget build(BuildContext context) {
    final routeDefinition = ServiceLocator.getIt.get<IRouteDefinitionService>(instanceName: RouteType.frame.toString());
    return Container(
      color: Colors.white,
      //constraints: BoxConstraints(minWidth: 500, minHeight: 500),
      child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              if (widget.viewModel.showSideMenu)
                SizedBox(
                  width: widget.viewModel.sideMenuWidth,
                  child: const SideMenuConnector(),
                ),
              Expanded(
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: widget.viewModel.fullscreenMinWidth - widget.viewModel.sideMenuWidth,
                      maxWidth: widget.viewModel.fullscreenMinWidth,
                    ),
                    child: WillPopScopeWidget(
                      command: widget.viewModel.willPopCommand.command,
                      routeKey: routeDefinition.key,
                      initialRoute: RouteDirection.notes,
                      generateRoute: routeDefinition.generateRoute,
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
