import 'package:daymemory/data/dtos/tag_dto.dart';
import 'package:daymemory/widget/theme/app_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TagClips extends StatelessWidget {
  final List<TagDto> tags;

  final void Function(TagDto? tag) onTagChanged;

  const TagClips({Key? key, required this.tags, required this.onTagChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);
    return Container(
      height: 40,
      padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
      child: MasonryGridView.count(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        crossAxisCount: 1,
        itemCount: tags.length,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              onTagChanged(tags[index]);
            },
            splashColor: Theme.of(context).primaryColorLight,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Center(
                child: Text(
                  "#${tags[index].text}",
                  style: TextStyle(color: appTheme.colorAccent),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
