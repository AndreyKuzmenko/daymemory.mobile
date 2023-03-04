import 'package:daymemory/widget/common/loading_indicator/loading_indicator.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String text;

  const LoadingWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return FractionallySizedBox(
      heightFactor: 0.9,
      alignment: Alignment.topCenter,
      child: LoadingIndicator(
        message: text,
        brandingColor: appTheme.colorAccent,
      ),
    );
  }
}
