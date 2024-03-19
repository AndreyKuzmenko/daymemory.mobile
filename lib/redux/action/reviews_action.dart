import 'package:daymemory/data/dtos/review_category_dto.dart';

import 'common_action.dart';

class ReviewsIsLoadingAction implements ILoggingAction {
  final bool isLoading;

  const ReviewsIsLoadingAction({required this.isLoading});

  @override
  String toLogString() {
    return 'Reviews Loading Action: $isLoading';
  }
}

class LoadReviewsAction implements ILoggingAction {
  @override
  String toLogString() {
    return 'Load Reviews Action';
  }
}

class ReviewsLoadedAction implements ILoggingAction {
  final List<ReviewCategoryDto> items;

  final DateTime lastLoadDate;

  ReviewsLoadedAction(this.items, this.lastLoadDate);

  @override
  String toLogString() {
    return 'Reviews Loaded Action, count: ${items.length}';
  }
}
