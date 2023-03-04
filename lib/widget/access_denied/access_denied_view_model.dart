import 'package:built_value/built_value.dart';
import 'package:daymemory/widget/common/function_holder.dart';
part 'access_denied_view_model.g.dart';

abstract class AccessDeniedViewModel implements Built<AccessDeniedViewModel, AccessDeniedViewModelBuilder> {
  String get title;
  String get message;
  String? get buttonTitle;
  FunctionHolder? get buttonCommand;

  AccessDeniedViewModel._();
  factory AccessDeniedViewModel([void Function(AccessDeniedViewModelBuilder) updates]) = _$AccessDeniedViewModel;
}
