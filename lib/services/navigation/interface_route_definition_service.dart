import 'package:flutter/material.dart';

enum RouteType { unknown, mobile, generic, frame }

abstract class IRouteDefinitionService {
  final key = GlobalKey<NavigatorState>();

  Route<dynamic> generateRoute(RouteSettings settings);

  dynamic getInstantPageTrasition(Widget child, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => child,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
  }

  dynamic showDialogPopup(Widget content, RouteSettings settings, Color color) {
    return PageRouteBuilder(
      opaque: false,
      settings: settings,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
      pageBuilder: (_, __, ___) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: SizedBox.shrink(),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
            color: color,
            child: Center(
                child: SizedBox(
              width: 600,
              height: 700,
              child: content,
            ))),
      ),
    );
  }
}
