import 'common_action.dart';

class SelectTabAction implements ILoggingAction {
  final int selectedTabIndex;

  SelectTabAction(this.selectedTabIndex);

  @override
  String toLogString() {
    return 'Select Tab Action';
  }
}

class TabSelectedAction implements ILoggingAction {
  final int selectedTabIndex;

  TabSelectedAction({required this.selectedTabIndex});

  @override
  String toLogString() {
    return 'Tab Selected Action';
  }
}

class TabScrollAction implements ILoggingAction {
  final bool isEnabled;

  TabScrollAction({required this.isEnabled});

  @override
  String toLogString() {
    return 'Tab Scroll Action';
  }
}
