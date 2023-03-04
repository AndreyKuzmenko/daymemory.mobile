import 'common_action.dart';

class SideMenuChangeItemAction implements ILoggingAction {
  final String tag;

  const SideMenuChangeItemAction({required this.tag});

  @override
  String toLogString() {
    return 'Side Menu Change item Action: $tag';
  }
}
