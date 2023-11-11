import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final String? message;
  final Color brandingColor;

  const LoadingIndicator({
    super.key,
    this.message,
    required this.brandingColor,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: brandingColor,
          ),
          const SizedBox(
            height: 22,
          ),
          if (message != null)
            Text(
              message!,
              style: appTheme.regular16.copyWith(color: brandingColor),
            ),
        ],
      ),
    );
  }
}
