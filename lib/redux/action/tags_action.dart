import 'package:daymemory/data/dtos/tag_dto.dart';

import 'common_action.dart';

class LoadTagsAction implements ILoggingAction {
  final dynamic nextAction;

  LoadTagsAction({this.nextAction});

  @override
  String toLogString() {
    return 'Load Tags Action';
  }
}

class TagsLoadedAction implements ILoggingAction {
  final List<TagDto> tags;

  TagsLoadedAction({
    required this.tags,
  });

  @override
  String toLogString() => 'Tags Loaded Action';
}
