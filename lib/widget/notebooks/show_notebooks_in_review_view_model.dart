import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
import 'package:daymemory/widget/notebooks/show_notebook_in_review_view_model.dart';

part 'show_notebooks_in_review_view_model.g.dart';

abstract class ShowNotebooksInReviewViewModel implements Built<ShowNotebooksInReviewViewModel, ShowNotebooksInReviewViewModelBuilder> {
  String get title;

  List<ShowNotebookInReviewViewModel> get notebooks;

  String get noNotebooks;

  FunctionHolder? get backCommand;

  ShowNotebooksInReviewViewModel._();

  factory ShowNotebooksInReviewViewModel([void Function(ShowNotebooksInReviewViewModelBuilder)? updates]) = _$ShowNotebooksInReviewViewModel;
}
