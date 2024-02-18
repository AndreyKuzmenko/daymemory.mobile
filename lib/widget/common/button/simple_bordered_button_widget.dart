import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';

class SimpleBorderedButtonWidget extends StatelessWidget {
  final String text;
  final FunctionHolder? click;
  final double height;

  const SimpleBorderedButtonWidget({
    super.key,
    required this.click,
    required this.text,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: height,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: Theme.of(context).extension<ThemeColors>()!.accentColor!,
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      child: MaterialButton(
        onPressed: click?.command,
        disabledColor: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor!,
        child: Text(text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
            )),
      ),
    );
  }
}
