import 'package:flutter/material.dart';

import '../theme/app_theme_widget.dart';

class KeyboardButtonWidget extends StatelessWidget {
  final String title;
  final Function(String) onTap;
  final Color mainColor;

  const KeyboardButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.mainColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return InkResponse(
      onTap: () => {onTap(title)},
      child: Container(
        height: 72,
        width: 72,
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 2.0),
          borderRadius: BorderRadius.circular(36),
        ),
        child: Center(
          child: Text(
            title,
            style: appTheme.semiBold28.copyWith(
              color: mainColor,
            ),
          ),
        ),
      ),
    );
  }
}
