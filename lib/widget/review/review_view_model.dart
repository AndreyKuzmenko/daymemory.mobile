import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/review_category_dto.dart';
import 'package:daymemory/data/dtos/review_item_dto.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/review/review_category_view_model.dart';

part 'review_view_model.g.dart';

abstract class ReviewViewModel implements Built<ReviewViewModel, ReviewViewModelBuilder> {
  bool get isLoading;

  String get title;

  String get loadingTitle;

  String get noItems;

  List<ReviewCategoryViewModel> get items;

  bool get showDrawerMenu;

  ReviewViewModel._();

  factory ReviewViewModel([void Function(ReviewViewModelBuilder)? updates]) = _$ReviewViewModel;
}
