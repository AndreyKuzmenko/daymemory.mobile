import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/review_category_dto.dart';

part 'reviews_state.g.dart';

abstract class ReviewsState implements Built<ReviewsState, ReviewsStateBuilder> {
  List<ReviewCategoryDto> get items;

  bool get isLoading;

  ReviewsState._();

  factory ReviewsState([void Function(ReviewsStateBuilder) updates]) = _$ReviewsState;

  factory ReviewsState.initial() => ReviewsState(
        (b) => b
          ..isLoading = false
          ..items = [],
      );
}
