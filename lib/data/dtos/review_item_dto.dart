import 'package:daymemory/data/dtos/note_dto.dart';
import 'package:daymemory/widget/common/file_view_model.dart';

class ReviewItemDto {
  String id;
  DateTime date;
  String title;
  String text;
  LocationDto? location;
  FileViewModel? file;

  ReviewItemDto({
    required this.id,
    required this.date,
    required this.text,
    this.location,
    this.file,
    required this.title,
  });
}
