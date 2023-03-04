import 'package:daymemory/data/dtos/tag_dto.dart';

import 'common_action.dart';

class LoadEditTagsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Load Edit Tags Action';
  }
}

class TagsEditLoadedAction implements ILoggingAction {
  final List<TagDto> tags;

  TagsEditLoadedAction({
    required this.tags,
  });

  @override
  String toLogString() => 'Tags Edit Loaded Action';
}

class EditTagsIsLoadingAction implements ILoggingAction {
  final bool isLoading;

  EditTagsIsLoadingAction({required this.isLoading});

  @override
  String toLogString() {
    return 'Edit Tags Loading Action';
  }
}

class SaveTagsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Save Tags Action';
  }
}

class TagsSavingAction implements ILoggingAction {
  final bool isSaving;

  TagsSavingAction({required this.isSaving});

  @override
  String toLogString() {
    return 'Tags Is Saving Action';
  }
}

class ReorderTagsAction implements ILoggingAction {
  int start;

  int current;

  ReorderTagsAction(this.start, this.current);

  @override
  String toLogString() {
    return 'Reorder Tags Action';
  }
}

class AddTagAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Add Tag Action';
  }
}

class RemoveTagAction implements ILoggingAction {
  final String tagId;

  RemoveTagAction({required this.tagId});

  @override
  String toLogString() {
    return 'Remove Tag Action';
  }
}

class ChangeTagAction implements ILoggingAction {
  final String text;

  final String tagId;

  ChangeTagAction({required this.text, required this.tagId});

  @override
  String toLogString() {
    return 'Change Tag Action';
  }
}
