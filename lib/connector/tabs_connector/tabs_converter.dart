import 'dart:ui';
import 'package:daymemory/connector/view_model_converter.dart';
import 'package:daymemory/redux/action/tabs_action.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/tabs/tabs_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabsConverter extends ViewModelConverter<TabsViewModel> {
  final AppLocalizations loc;
  final Locale locale;
  final Function(dynamic) dispatch;
  final int selectedTabIndex;
  final bool isActiveTabClicked;

  TabsConverter({
    required this.locale,
    required this.loc,
    required this.dispatch,
    required this.selectedTabIndex,
    required this.isActiveTabClicked,
  });

  @override
  TabsViewModel build() {
    return TabsViewModel((b) => b
      ..selectedTabIndex = selectedTabIndex
      ..tabQuestions = loc.tab_questions
      ..tabTimeline = loc.tab_timeline
      ..isActiveTabClicked = isActiveTabClicked
      ..tabSelectCommand = TypedFunctionHolder<int>((index) {
        dispatch(SelectTabAction(index));
      }));
  }
}
