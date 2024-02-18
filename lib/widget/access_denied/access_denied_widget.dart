import 'package:daymemory/widget/access_denied/access_denied_view_model.dart';
import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:flutter/material.dart';

class AccessDeniedWidget extends StatelessWidget {
  final AccessDeniedViewModel viewModel;

  const AccessDeniedWidget({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            // gradient: LinearGradient(
            //   begin: Alignment.bottomCenter,
            //   end: Alignment.topCenter,
            //   colors: <Color>[
            //     appTheme.blueGradientStart,
            //     appTheme.blueGradientEnd,
            //   ],
            // ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  viewModel.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  viewModel.message,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Theme.of(context).textTheme.headlineMedium!.color!.withAlpha(200),
                      ),
                ),
                if (viewModel.buttonTitle != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: SimpleFilledButtonWidget(
                      text: viewModel.buttonTitle!,
                      click: viewModel.buttonCommand,
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
