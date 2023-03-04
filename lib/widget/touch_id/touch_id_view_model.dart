import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';

part 'touch_id_view_model.g.dart';

abstract class TouchIdViewModel implements Built<TouchIdViewModel, TouchIdViewModelBuilder> {
  FunctionHolder get allowCommand;

  FunctionHolder get skipCommand;

  String get allowTouchIdTitle;

  String get skipTitle;

  String get subTitle;

  TouchIdViewModel._();

  factory TouchIdViewModel([void Function(TouchIdViewModelBuilder)? updates]) = _$TouchIdViewModel;
}
