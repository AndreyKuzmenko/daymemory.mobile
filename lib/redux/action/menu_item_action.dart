import 'common_action.dart';

class SelectMenuItemAction implements ILoggingAction {
  final String? itemId;

  final String? title;

  final dynamic nextAction;

  SelectMenuItemAction({required this.itemId, required this.title, this.nextAction});

  @override
  String toLogString() {
    return 'Select Menu Item Action';
  }
}

class MenuItemSelectedAction implements ILoggingAction {
  final String? itemId;

  final String? title;

  MenuItemSelectedAction({required this.itemId, required this.title});

  @override
  String toLogString() {
    return 'Menu Item Selected Action';
  }
}
