import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewProgress extends StatelessWidget {
  final int numberOfSteps;
  final int currentStep;

  const ReviewProgress({super.key, required this.numberOfSteps, required this.currentStep});

  Widget _getDashedProgressWidget(BuildContext context) {
    var result = <Widget>[];
    final appTheme = AppThemeWidget.getTheme(context);

    for (var i = 0; i < numberOfSteps; i++) {
      var color = i < currentStep ? appTheme.colorAccent : appTheme.itemSeparatorColor;
      var item = Flexible(
          child: Container(
        decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(1))),
        height: 2,
        margin: EdgeInsets.fromLTRB(i == 0 ? 0 : 2, 0, i == numberOfSteps - 1 ? 0 : 2, 0),
      ));

      result.add(item);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: result,
    );
  }

  Widget _getSolidLineProgressWidget(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      var width = constraints.maxWidth / numberOfSteps * currentStep;
      return Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: appTheme.itemSeparatorColor, borderRadius: const BorderRadius.all(Radius.circular(2))),
            height: 3,
          ),
          Container(
            width: width,
            decoration: BoxDecoration(color: appTheme.colorAccent, borderRadius: const BorderRadius.all(Radius.circular(2))),
            height: 3,
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (numberOfSteps > 20) {
      return _getSolidLineProgressWidget(context);
    }
    return _getDashedProgressWidget(context);
  }
}
