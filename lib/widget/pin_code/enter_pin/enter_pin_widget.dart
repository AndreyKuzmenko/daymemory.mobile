import 'package:flutter/material.dart';
import '../../common/shake_widget/shake_widget.dart';
import '../../theme/app_theme_widget.dart';
import '../keyboard_rows.dart';
import 'enter_pin_view_model.dart';

class EnterPinWidget extends StatefulWidget {
  final EnterPinViewModel viewModel;

  const EnterPinWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<EnterPinWidget> createState() => _EnterPinWidgetState();
}

class _EnterPinWidgetState extends State<EnterPinWidget> {
  final shakeKey = GlobalKey<ShakeWidgetState>();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.viewModel.isBiometricsEnabled) {
        widget.viewModel.biometricCommand.command.call();
      }
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant EnterPinWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.viewModel.isRetry) shakeKey.currentState?.shake();
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppThemeWidget.getTheme(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: <Color>[
              appTheme.blueGradientStart,
              appTheme.blueGradientEnd,
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 600,
              maxWidth: 450,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      widget.viewModel.enteredPinTitle,
                      textAlign: TextAlign.center,
                      style: appTheme.semiBold24.copyWith(
                        color: appTheme.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
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
                                  color: _indicatorsColor(index < widget.viewModel.selectedEnteredIndicators),
                                  borderRadius: BorderRadius.circular(7),
                                  border: Border.all(
                                    color: appTheme.white,
                                    width: 2.0,
                                  )),
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
                  Flexible(
                    child: AspectRatio(
                      aspectRatio: 1.0 / 1.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          KeyboardRowWidget(
                            values: const ['1', '2', '3'],
                            onTap: widget.viewModel.typingCommand.command,
                            mainColor: appTheme.white,
                          ),
                          KeyboardRowWidget(
                            values: const ['4', '5', '6'],
                            mainColor: appTheme.white,
                            onTap: widget.viewModel.typingCommand.command,
                          ),
                          KeyboardRowWidget(
                            values: const ['7', '8', '9'],
                            mainColor: appTheme.white,
                            onTap: widget.viewModel.typingCommand.command,
                          ),
                          KeyboardLastRowWidget(
                            mainColor: appTheme.white,
                            isBiometricsEnabled: widget.viewModel.isBiometricsEnabled,
                            onBiometricTap: widget.viewModel.biometricCommand.command,
                            onTap: widget.viewModel.typingCommand.command,
                            onClear: widget.viewModel.clearCommand.command,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // InkWell(
                  //   onTap: widget.viewModel.forgotPinCommand.command,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(top: 30, bottom: 10),
                  //     child: Text(
                  //       'Forgot your PIN code?',
                  //       style: appTheme.sfProDisplayRegular16.copyWith(
                  //         color: appTheme.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _indicatorsColor(bool condition) {
    return condition ? Colors.white : Colors.transparent;
  }
}
