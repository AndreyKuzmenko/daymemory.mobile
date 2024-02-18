import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final FunctionHolder? click;
  final bool isLarge;

  const LinkButton({
    super.key,
    required this.click,
    required this.text,
    required this.isLarge,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: click?.command,
        highlightColor: Theme.of(context).extension<ThemeColors>()!.backgroundSecondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Text(text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: isLarge ? Theme.of(context).textTheme.titleLarge!.fontSize : Theme.of(context).textTheme.bodyMedium!.fontSize,
              )),
        ));
  }
}
