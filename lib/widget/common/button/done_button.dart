import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  final String text;
  final FunctionHolder? click;
  final double height;
  final Color textColor;
  final Color backgroundColor;
  final EdgeInsets padding;

  const DoneButton({
    super.key,
    required this.click,
    required this.text,
    this.height = 20,
    this.padding = EdgeInsets.zero,
    required this.textColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return ButtonTheme(
      height: height,
      //minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: padding,
        child: MaterialButton(
          elevation: 0,
          onPressed: click?.command,
          disabledColor: appTheme.secondaryTextColor,
          color: backgroundColor,
          child: Text(
            text,
            style: appTheme.semiBold16.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
