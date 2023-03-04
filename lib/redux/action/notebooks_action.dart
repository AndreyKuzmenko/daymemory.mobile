import 'package:daymemory/data/dtos/notebook_dto.dart';

import 'common_action.dart';

class LoadNotebooksAction implements ILoggingAction {
  final dynamic nextAction;

  LoadNotebooksAction({this.nextAction});

  @override
  String toLogString() {
    return 'Load Notebooks Action';
  }
}

class NotebooksLoadedAction implements ILoggingAction {
  final List<NotebookDto> items;

  NotebooksLoadedAction({
    required this.items,
  });

  @override
  String toLogString() => 'Notebooks Loaded Action';
}
