import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'face_id_view_model.g.dart';

abstract class FaceIdViewModel implements Built<FaceIdViewModel, FaceIdViewModelBuilder> {
  FunctionHolder get allowCommand;

  FunctionHolder get skipCommand;

  String get allowFaceIdTitle;

  String get skipTitle;

  String get subTitle;

  FaceIdViewModel._();

  factory FaceIdViewModel([void Function(FaceIdViewModelBuilder)? updates]) = _$FaceIdViewModel;
}
