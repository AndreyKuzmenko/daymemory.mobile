import 'package:daymemory/redux/action/actions.dart';

export 'common_action.dart';
export 'create_pin_action.dart';
export 'instruction_action.dart';
export 'login_action.dart';
export 'navigation_action.dart';
export 'onboarding_action.dart';
export 'side_menu_action.dart';
export 'token_action.dart';
export 'note_action.dart';
export 'notes_action.dart';
export 'tags_action.dart';
export 'question_lists_action.dart';
export 'question_list_action.dart';

class RequestStaticLinkAction implements ILoggingAction {
  final String requestedAction;
  final int? caseId;

  const RequestStaticLinkAction({
    required this.requestedAction,
    this.caseId,
  });

  @override
  String toLogString() {
    return 'Request Static Link Action';
  }
}
