import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'create_pin_type.g.dart';

class CreatePinType extends EnumClass {
  // Typing new PIN
  static const CreatePinType create = _$create;

  // Confirming new PIN
  static const CreatePinType confirm = _$confirm;

  // Navigate to create PIN screen
  static const CreatePinType openCreate = _$openCreate;

  // Navigate to confirm PIN screen
  static const CreatePinType openConfirm = _$openConfirm;

  // Created and Confirmed PINs are equal
  static const CreatePinType finish = _$finish;

  // Created and Confirmed PINs are different
  static const CreatePinType noMatch = _$noMatch;

  const CreatePinType._(super.name);

  static BuiltSet<CreatePinType> get values => _$createPinTypeValues;

  static CreatePinType valueOf(String name) => _$createPinTypeValueOf(name);
}
