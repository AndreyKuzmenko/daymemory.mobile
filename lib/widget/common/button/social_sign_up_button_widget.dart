import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class SocialSignUpButtonWidget extends StatelessWidget {
  final String? text;
  final FunctionHolder? click;
  final double height;
  final Color textColor;
  final IconData? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? borderColor;

  const SocialSignUpButtonWidget({
    Key? key,
    required this.click,
    this.text,
    this.icon,
    this.iconColor,
    this.height = 50,
    required this.textColor,
    this.backgroundColor,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return ButtonTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: OutlinedButton(
        onPressed: click?.command,

        //disabledColor: appTheme.secondaryTextColor,
        //color: backgroundColor,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: borderColor ?? Colors.transparent,
          ),
          backgroundColor: backgroundColor,
          disabledBackgroundColor: appTheme.secondaryTextColor,
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Center(
                child: icon == null
                    ? const SizedBox.shrink()
                    : Icon(
                        icon,
                        size: 20,
                        color: iconColor,
                      ),
              ),
            ),
            if (text != null)
              Text(
                text!,
                style: appTheme.semiBold16.copyWith(
                  color: textColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
