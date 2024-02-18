import 'package:daymemory/widget/common/loading_indicator/loading_indicator.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final String text;

  const LoadingWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      alignment: Alignment.topCenter,
      child: LoadingIndicator(
        message: text,
      ),
    );
  }
}
