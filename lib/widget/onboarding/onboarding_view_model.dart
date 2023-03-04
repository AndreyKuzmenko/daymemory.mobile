import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../common/function_holder.dart';

part 'onboarding_view_model.g.dart';

abstract class OnboardingViewModel implements Built<OnboardingViewModel, OnboardingViewModelBuilder> {
  BuiltList<String> get items;

  BuiltList<String> get titles;

  BuiltList<String> get subtitles;

  int get currentPage;

  bool get isLastPage;

  String get skipTitle;

  String get getStartedTitle;

  String get nextTitle;

  TypedFunctionHolder<int> get nextPageCommand;

  FunctionHolder get getStartedCommand;

  FunctionHolder get skipCommand;

  OnboardingViewModel._();

  factory OnboardingViewModel([void Function(OnboardingViewModelBuilder)? updates]) = _$OnboardingViewModel;
}
