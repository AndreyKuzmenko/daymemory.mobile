import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'jailbreak_type.g.dart';

class JailbreakType extends EnumClass {
  /// Device is not jailbroken.
  static const JailbreakType validPhone = _$validPhone;

  /// Device is jailbroken.
  static const JailbreakType invalidPhone = _$invalidPhone;

  /// Check was not performed. Initial value.
  static const JailbreakType unknown = _$unknown;

  const JailbreakType._(String name) : super(name);

  static BuiltSet<JailbreakType> get values => _$jailbreakTypeValues;

  static JailbreakType valueOf(String name) => _$jailbreakTypeValueOf(name);
}
