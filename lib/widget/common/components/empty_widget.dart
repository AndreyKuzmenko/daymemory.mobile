import 'package:daymemory/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyWidget extends StatelessWidget {
  final String text;

  const EmptyWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    //final appTheme = AppThemeWidget.getTheme(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.svg.emptyPage,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
