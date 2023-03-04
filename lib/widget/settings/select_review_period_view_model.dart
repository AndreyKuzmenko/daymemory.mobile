import 'package:built_value/built_value.dart';
import 'package:daymemory/services/settings_service/storage_review_settings.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'select_review_period_view_model.g.dart';

class ReviewPeriodStatusDto {
  final ReviewPeriod period;

  final bool isEnabled;

  ReviewPeriodStatusDto({required this.period, required this.isEnabled});
}

abstract class SelectReviewPeriodViewModel implements Built<SelectReviewPeriodViewModel, SelectReviewPeriodViewModelBuilder> {
  String get title;

  StorageReviewSettings get reviewSettings;

  String get sevenDaysOptionTitle;

  String get tenDaysOptionTitle;

  String get oneMonthOptionTitle;

  String get threeMonthsOptionTitle;

  String get sixMonthsOptionTitle;

  String get yearlyOptionTitle;

  FunctionHolder? get backCommand;

  TypedFunctionHolder<ReviewPeriodStatusDto> get periodSelectorCommand;

  SelectReviewPeriodViewModel._();

  factory SelectReviewPeriodViewModel([void Function(SelectReviewPeriodViewModelBuilder)? updates]) = _$SelectReviewPeriodViewModel;
}
