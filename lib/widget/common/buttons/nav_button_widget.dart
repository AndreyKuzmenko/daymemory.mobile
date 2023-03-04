import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter/material.dart';

class NavButtonWidget extends StatelessWidget {
  final FunctionHolder? onPressed;
  final IconData icon;
  final Color? color;

  const NavButtonWidget({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 24.0,
        color: color ?? Colors.black,
      ),
      splashRadius: 20,
      onPressed: onPressed == null
          ? null
          : () {
              onPressed!.command();
            },
    );
  }
}
