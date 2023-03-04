import 'package:daymemory/connector/edit_note_connector/edit_note_connector.dart';
import 'package:daymemory/connector/notes_connector/notes_connector.dart';
import 'package:daymemory/connector/review_connector/review_connector.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/route_direction.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:flutter/material.dart';

class FrameDefinitionService extends IRouteDefinitionService {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteDirection.editNote:
        return getInstantPageTrasition(const EditNoteConnector(), settings);

      case RouteDirection.newNote:
        return getInstantPageTrasition(const EditNoteConnector(), settings);

      case RouteDirection.notes:
        return getInstantPageTrasition(const NotesConnector() /*TabsConnector()*/, settings);

      case RouteDirection.review:
        return getInstantPageTrasition(const ReviewConnector() /*TabsConnector()*/, settings);

      default:
        return getInstantPageTrasition(const SplashWidget(), settings);
    }
  }
}
