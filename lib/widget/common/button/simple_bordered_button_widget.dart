import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class SimpleBorderedButtonWidget extends StatelessWidget {
  final String text;
  final FunctionHolder? click;
  final double height;

  const SimpleBorderedButtonWidget({
    Key? key,
    required this.click,
    required this.text,
    this.height = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return ButtonTheme(
      height: height,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: appTheme.colorAccent,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: MaterialButton(
        onPressed: click?.command,
        disabledColor: appTheme.secondaryTextColor,
        child: Text(
          text,
          style: appTheme.semiBold16.copyWith(
            color: appTheme.colorAccent,
          ),
        ),
      ),
    );
  }
}
