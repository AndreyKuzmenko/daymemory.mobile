import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/notes/note_view_model.dart';

part 'review_category_view_model.g.dart';

abstract class ReviewCategoryViewModel implements Built<ReviewCategoryViewModel, ReviewCategoryViewModelBuilder> {
  String get id;

  String get title;

  List<NoteViewModel> get notes;

  ReviewCategoryViewModel._();

  factory ReviewCategoryViewModel([void Function(ReviewCategoryViewModelBuilder)? updates]) = _$ReviewCategoryViewModel;
}
