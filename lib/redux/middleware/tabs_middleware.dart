import 'package:daymemory/redux/action/actions.dart';
import 'package:daymemory/redux/action/tabs_action.dart';
import 'package:daymemory/redux/state/app_state.dart';
import 'package:daymemory/services/device_service/device_service.dart';
// ignore: depend_on_referenced_packages
import 'package:redux/redux.dart';

class TabsMiddleware implements MiddlewareClass<AppState> {
  final IDeviceService deviceFeedbackService;

  TabsMiddleware({required this.deviceFeedbackService});

  @override
  Future call(Store<AppState> store, action, NextDispatcher next) async {
    next(action);
    if (action is SelectTabAction) {
      deviceFeedbackService.selectionClickFeedback();

      if (store.state.tabsState.selectTabIndex == action.selectedTabIndex) {
        store.dispatch(TabScrollAction(isEnabled: true));
        store.dispatch(DelayedAction(nextAction: TabScrollAction(isEnabled: false), delay: 200));
      } else {
        store.dispatch(TabSelectedAction(selectedTabIndex: action.selectedTabIndex));
      }
    }
  }
}
