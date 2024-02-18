import 'package:daymemory/widget/common/button/simple_filled_button_widget.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/onboarding/onboarding_view_model.dart';
import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

class OnboardingWidget extends StatefulWidget {
  final OnboardingViewModel viewModel;

  const OnboardingWidget({
    super.key,
    required this.viewModel,
  });

  @override
  State<OnboardingWidget> createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PageView.builder(
                    itemCount: widget.viewModel.items.length,
                    controller: _pageController,
                    itemBuilder: (BuildContext context, int index) {
                      return _PageViewItem(
                        viewModel: widget.viewModel,
                        index: index,
                      );
                    },
                    onPageChanged: (int index) {
                      _currentPageNotifier.value = index;
                      widget.viewModel.nextPageCommand.command(index);
                    }),
              ),
            ),
            SizedBox(
              //color: Colors.red,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CirclePageIndicator(
                      itemCount: widget.viewModel.items.length,
                      currentPageNotifier: _currentPageNotifier,
                      dotColor: Theme.of(context).extension<ThemeColors>()!.accentColor!.withOpacity(0.2),
                      selectedDotColor: Theme.of(context).extension<ThemeColors>()!.accentColor,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: SizedBox(
                          height: 50,
                          child: widget.viewModel.isLastPage
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 30),
                                  child: SimpleFilledButtonWidget(
                                    click: widget.viewModel.getStartedCommand,
                                    text: widget.viewModel.getStartedTitle,
                                  ),
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: widget.viewModel.skipCommand.command,
                                      child: SizedBox(
                                        width: 110,
                                        child: Center(
                                          child: Text(widget.viewModel.skipTitle),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 110,
                                      child: SimpleFilledButtonWidget(
                                        click: FunctionHolder(() {
                                          _pageController.nextPage(
                                            duration: const Duration(milliseconds: 300),
                                            curve: Curves.easeInOut,
                                          );
                                        }),
                                        text: widget.viewModel.nextTitle,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class _PageViewItem extends StatefulWidget {
  const _PageViewItem({
    required this.viewModel,
    required this.index,
  });

  final OnboardingViewModel viewModel;
  final int index;

  @override
  State<_PageViewItem> createState() => _PageViewItemState();
}

class _PageViewItemState extends State<_PageViewItem> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: FadeTransition(
              opacity: _animationController.drive(
                CurveTween(curve: Curves.easeOut),
              ),
              child: Image.asset(
                widget.viewModel.items[widget.index],
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.viewModel.titles[widget.index],
          style: Theme.of(context).textTheme.headlineMedium, //TODO:theme
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          widget.viewModel.subtitles[widget.index],
          textAlign: TextAlign.center,
          //style: theme.regular16.copyWith(color: theme.secondaryTextColor, height: 1.6),//TODO:theme
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
