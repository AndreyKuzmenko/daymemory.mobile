import 'dart:ui';
import 'package:daymemory/services/connection_service/connection_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/store/store_service.dart';
import 'package:daymemory/widget/root/two_sides_widget.dart';
import 'package:daymemory/widget/root/root_view_model.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../redux/action/actions.dart';

class RootAppWidget extends StatefulWidget {
  final RootViewModel viewModel;

  const RootAppWidget({super.key, required this.viewModel});

  @override
  State<StatefulWidget> createState() => RootState();
}

class RootState<T extends RootAppWidget> extends State<T> with WidgetsBindingObserver {
  late bool _dialogShown;
  bool shouldBlur = false;

  @override
  void initState() {
    _dialogShown = false;
    //_viewModel = widget.viewModel;
    final dispatch = ServiceLocator.getIt.get<IStoreService>().dispatch;
    ServiceLocator.getIt.get<IConnectionService>().dispatch = dispatch;

    super.initState();

    widget.viewModel.initialized.command();

    WidgetsBinding.instance.addObserver(this);
    dispatch(initialInstruction);

    Future.delayed(Duration.zero, () {
      var screenWidth = (View.of(context).physicalSize.width / View.of(context).devicePixelRatio);
      var screenHeight = (View.of(context).physicalSize.height / View.of(context).devicePixelRatio);
      var size = Size(screenWidth, screenHeight);
      widget.viewModel.sizeChanged.command(size);
    });
  }

  @override
  void didUpdateWidget(covariant T oldWidget) {
    _invalidateDialogState();
    //_viewModel = widget.viewModel;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeMetrics() {
    var screenWidth = (View.of(context).physicalSize.width / View.of(context).devicePixelRatio);
    var screenHeight = (View.of(context).physicalSize.height / View.of(context).devicePixelRatio);
    var size = Size(screenWidth, screenHeight);
    if (widget.viewModel.size != size) {
      widget.viewModel.sizeChanged.command(size);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mainRouteDefinition = ServiceLocator.getIt.get<IRouteDefinitionService>(instanceName: widget.viewModel.routeType.toString());

    return Stack(
      children: [
        Navigator(
            key: mainRouteDefinition.key,
            initialRoute: '/',
            onGenerateRoute: (RouteSettings settings) {
              if (widget.viewModel.isSideMenuSupported) {
                if (settings.name == RouteDirection.root) {
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (_, __, ___) => TwoSidesWidget(
                      viewModel: widget.viewModel,
                    ),
                    transitionDuration: const Duration(seconds: 0),
                  );
                }
              }
              return mainRouteDefinition.generateRoute(settings);
            }),
        if (shouldBlur)
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200.withOpacity(0.5),
            ),
          ),
      ],
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (widget.viewModel.isPasscodeEnabled) {
      setState(() {
        //   shouldBlur = state == AppLifecycleState.inactive || state == AppLifecycleState.paused;
      });
    }

    if (!widget.viewModel.isAppActive) {
      if (state == AppLifecycleState.resumed) {
        widget.viewModel.resumed.command();
      } else if (state == AppLifecycleState.paused) {
        widget.viewModel.paused.command();
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void _invalidateDialogState() {
    if (widget.viewModel.dialog != null && !_dialogShown) {
      final dialog = widget.viewModel.dialog!;
      WidgetsBinding.instance.addPostFrameCallback(
        (_) async {
          _dialogShown = true;

          var buttons = [
            if (dialog.positiveTitle?.isNotEmpty ?? false)
              CupertinoDialogAction(
                onPressed: dialog.positive?.command,
                child: Text(
                  dialog.positiveTitle!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            if (dialog.negativeTitle?.isNotEmpty ?? false)
              CupertinoDialogAction(
                onPressed: dialog.negative?.command,
                child: Text(
                  dialog.negativeTitle!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              )
          ];

          if (widget.viewModel.dialog!.reverseButtons) {
            buttons = buttons.reversed.toList();
          }

          await showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text(dialog.title),
              content: Text(dialog.description),
              actions: buttons,
            ),
          );
          widget.viewModel.dialogDismiss.command();
          _dialogShown = false;
        },
      );
    }
  }
}

class WillPopScopeWidget extends StatelessWidget {
  final Future<bool> Function()? command;
  final GlobalKey routeKey;
  final String? initialRoute;
  final RouteFactory? generateRoute;

  const WillPopScopeWidget({
    super.key,
    required this.command,
    required this.routeKey,
    required this.initialRoute,
    required this.generateRoute,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        command?.call();
      },
      child: Navigator(
        key: routeKey,
        initialRoute: initialRoute,
        onGenerateRoute: generateRoute,
        observers: [
          HeroController(),
        ],
      ),
    );
  }
}
