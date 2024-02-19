import 'package:flutter/material.dart';

import '../../redux/state/create_pin_state/create_pin_type.dart';
import '../common/shake_widget/shake_widget.dart';
import 'create_pin/create_pin_view_model.dart';
import 'keyboard_rows.dart';

class KeyboardWithIndicatorsWidget extends StatelessWidget {
  final CreatePinViewModel viewModel;
  final GlobalKey<ShakeWidgetState>? shakeKey;

  const KeyboardWithIndicatorsWidget({
    super.key,
    required this.viewModel,
    required this.shakeKey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28, bottom: 10),
          child: SizedBox(
            height: 14,
            child: ShakeWidget(
              key: shakeKey,
              shakeCount: 3,
              shakeOffset: 10,
              shakeDuration: const Duration(milliseconds: 500),
              child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      color: viewModel.createPinType == CreatePinType.create
                          ? _indicatorsColor(index < viewModel.selectedEnteredIndicators)
                          : _indicatorsColor(index < viewModel.selectedConfirmedIndicators),
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 14,
                  );
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.85,
            widthFactor: 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyboardRowWidget(
                  values: const ['1', '2', '3'],
                  onTap: viewModel.typingCommand.command,
                ),
                KeyboardRowWidget(
                  values: const ['4', '5', '6'],
                  onTap: viewModel.typingCommand.command,
                ),
                KeyboardRowWidget(
                  values: const ['7', '8', '9'],
                  onTap: viewModel.typingCommand.command,
                ),
                KeyboardLastRowWidget(
                  onTap: viewModel.typingCommand.command,
                  onClear: viewModel.clearCommand.command,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Color _indicatorsColor(bool condition) {
    return condition ? Colors.black : Colors.white;
  }
}
