import 'package:daymemory/redux/state/app_state.dart' show AppState;
import 'package:daymemory/services/logging/logging_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class LoggingMiddleware implements MiddlewareClass<AppState> {
  final ILoggingService loggingService;

  LoggingMiddleware({
    required this.loggingService,
  });

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    loggingService.logAction(action);
  }
}
