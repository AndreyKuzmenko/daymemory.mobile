import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class IContextService {
  BuildContext? get context;

  AppLocalizations? get locale;
}

class ContextService implements IContextService {
  final IRouteDefinitionService routeDefinitionService;

  ContextService({required this.routeDefinitionService});

  @override
  BuildContext? get context => routeDefinitionService.key.currentContext;

  @override
  AppLocalizations? get locale => context == null ? null : AppLocalizations.of(context!);
}
