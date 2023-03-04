import 'package:daymemory/data/dtos/note_dto.dart';

class ReviewCategoryDto {
  String id;
  String title;
  List<NoteDto> notes;

  ReviewCategoryDto({
    required this.id,
    required this.notes,
    required this.title,
  });
}
