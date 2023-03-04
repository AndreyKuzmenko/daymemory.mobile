import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/assets.gen.dart';
import 'keyboard_button_widget.dart';

class KeyboardRowWidget extends StatelessWidget {
  final Function(String) onTap;
  final List<String> values;
  final Color mainColor;

  const KeyboardRowWidget({
    Key? key,
    required this.values,
    required this.onTap,
    this.mainColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var e = 0; e < values.length; e++)
          KeyboardButtonWidget(
            title: values[e],
            onTap: onTap,
            mainColor: mainColor,
          ),
      ],
    );
  }
}

class KeyboardLastRowWidget extends StatelessWidget {
  final Color mainColor;
  final Function(String) onTap;
  final Function() onClear;
  final bool? isFaceId;
  final VoidCallback? onBiometricTap;

  const KeyboardLastRowWidget({
    Key? key,
    required this.onTap,
    required this.onClear,
    this.mainColor = Colors.black,
    this.isFaceId,
    this.onBiometricTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkResponse(
          onTap: onBiometricTap,
          child: SizedBox(
            width: 72,
            child: isFaceId == null
                ? null
                : isFaceId!
                    ? SvgPicture.asset(
                        Assets.svg.faceId,
                        color: mainColor,
                        height: 35,
                        width: 35,
                      )
                    : SvgPicture.asset(
                        Assets.svg.fingerprint,
                        color: mainColor,
                        height: 35,
                        width: 35,
                      ),
          ),
        ),
        KeyboardButtonWidget(
          title: '0',
          mainColor: mainColor,
          onTap: onTap,
        ),
        SizedBox(
          width: 72,
          child: InkResponse(
            onTap: onClear,
            child: Icon(
              size: 40,
              Icons.close,
              color: mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
