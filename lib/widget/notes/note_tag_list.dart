import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';

class NoteTagList extends StatelessWidget {
  final List<String> tags;

  const NoteTagList({
    super.key,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: tags
            .map(
              (e) => Text(
                "#$e",
                style: TextStyle(color: Theme.of(context).extension<ThemeColors>()!.accentColor, fontSize: 14),
              ),
            )
            .toList(),
      ),
    );
  }
}
