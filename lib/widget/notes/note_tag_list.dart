import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';

class NoteTagList extends StatelessWidget {
  final List<String> tags;

  const NoteTagList({
    super.key,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppThemeWidget.getTheme(context);
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: tags
            .map(
              (e) => Text(
                "#$e",
                style: TextStyle(color: theme.colorAccent, fontSize: 14),
              ),
            )
            .toList(),
      ),
    );
  }
}
