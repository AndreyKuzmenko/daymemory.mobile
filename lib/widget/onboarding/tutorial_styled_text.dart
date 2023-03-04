import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

import '../theme/app_theme_widget.dart';

class TutorialStyledText extends StatelessWidget {
  const TutorialStyledText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.getTheme(context);
    return StyledText(
      text: title,
      style: theme.regular16.copyWith(
        height: 1.6,
      ),
      textAlign: TextAlign.center,
      tags: {
        'bold': StyledTextTag(
          style: theme.semiBold16.copyWith(
            color: theme.secondaryTextColor,
          ),
        ),
      },
    );
  }
}
