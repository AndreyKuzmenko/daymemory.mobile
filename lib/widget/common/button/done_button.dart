import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  final String text;
  final FunctionHolder? click;
  final double height;
  final EdgeInsets padding;

  const DoneButton({
    super.key,
    required this.click,
    required this.text,
    this.height = 20,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: height,
      //minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: padding,
        child: MaterialButton(
          elevation: 0,
          onPressed: click?.command,
          disabledColor: Theme.of(context).extension<ThemeColors>()!.textSecondaryColor!,
          //color: backgroundColor,//TODO:theme
          child: Text(text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              )),
        ),
      ),
    );
  }
}
