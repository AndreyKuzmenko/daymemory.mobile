import 'package:flutter/material.dart';

class PageNavigation extends StatelessWidget {
  const PageNavigation({
    super.key,
    required this.pageController,
    required this.pageIndex,
    required this.pageCount,
    this.onPageChanged,
    this.pageTransitionDuration = 500,
  });

  final PageController pageController;
  final int pageIndex;
  final int pageCount;
  final int pageTransitionDuration;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundColor: Colors.black.withAlpha(150),
              child: IconButton(
                iconSize: 36,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: pageIndex == 0 ? Colors.grey : Colors.white,
                  ),
                ),
                onPressed: pageIndex == 0
                    ? null
                    : () {
                        pageController.previousPage(duration: Duration(milliseconds: pageTransitionDuration), curve: Curves.ease);
                        if (onPageChanged != null) onPageChanged!(pageIndex - 1);
                      },
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            CircleAvatar(
              radius: 36,
              backgroundColor: Colors.black.withAlpha(150),
              child: IconButton(
                iconSize: 36,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: pageIndex + 1 == pageCount ? Colors.grey : Colors.white,
                  ),
                ),
                onPressed: pageIndex + 1 == pageCount
                    ? null
                    : () {
                        pageController.nextPage(duration: Duration(milliseconds: pageTransitionDuration), curve: Curves.ease);
                        if (onPageChanged != null) {
                          onPageChanged!(pageIndex + 1);
                        }
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
