import 'package:flutter/material.dart';

class KeyboardButtonWidget extends StatelessWidget {
  final String title;
  final Function(String) onTap;
  final Color mainColor;

  const KeyboardButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.mainColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () => {onTap(title)},
      child: Container(
        height: 72,
        width: 72,
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 2.0),
          borderRadius: BorderRadius.circular(36),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: mainColor,
                ),
          ),
        ),
      ),
    );
  }
}
