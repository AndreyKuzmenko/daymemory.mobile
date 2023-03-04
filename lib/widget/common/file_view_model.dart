import 'package:built_value/built_value.dart';
import 'package:daymemory/data/dtos/file_dto.dart';

part 'file_view_model.g.dart';

abstract class FileViewModel implements Built<FileViewModel, FileViewModelBuilder> {
  String get id;
  String get filePath;
  FileType get fileType;
  int get height;
  int get width;

  FileViewModel._();

  factory FileViewModel([void Function(FileViewModelBuilder) updates]) = _$FileViewModel;
}
