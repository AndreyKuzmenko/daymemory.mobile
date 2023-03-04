import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'show_notebook_in_review_view_model.g.dart';

abstract class ShowNotebookInReviewViewModel implements Built<ShowNotebookInReviewViewModel, ShowNotebookInReviewViewModelBuilder> {
  TypedFunctionHolder<bool> get switchShowInReviewCommand;

  String get notebookId;

  String get notebookTitle;

  bool get isEnabled;

  ShowNotebookInReviewViewModel._();

  factory ShowNotebookInReviewViewModel([void Function(ShowNotebookInReviewViewModelBuilder)? updates]) = _$ShowNotebookInReviewViewModel;
}
