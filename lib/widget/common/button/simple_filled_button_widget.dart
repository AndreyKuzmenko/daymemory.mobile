import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleFilledButtonWidget extends StatelessWidget {
  final String text;
  final FunctionHolder? click;
  final bool? isLoading;

  const SimpleFilledButtonWidget({
    super.key,
    required this.click,
    required this.text,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click?.command,
      child: isLoading != null && isLoading!
          ? CupertinoActivityIndicator(
              color: Theme.of(context).extension<ThemeColors>()!.textPrimaryColor,
              radius: 16,
            )
          : Text(
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    height: 1,
                    color: Theme.of(context).extension<ThemeColors>()!.buttonTextColor,
                  ),
              text,
            ),
    );
  }
}
