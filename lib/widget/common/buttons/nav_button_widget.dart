import 'package:daymemory/widget/common/function_holder.dart';
import 'package:flutter/material.dart';

class NavButtonWidget extends StatelessWidget {
  final FunctionHolder? onPressed;
  final IconData icon;

  const NavButtonWidget({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: IconButton(
        icon: Icon(
          icon,
          size: 24.0,
          //color: color ?? Colors.black,
        ),
        splashRadius: 20,
        onPressed: onPressed == null
            ? null
            : () {
                onPressed!.command();
              },
      ),
    );
  }
}
