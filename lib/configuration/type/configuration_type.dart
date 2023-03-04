import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'configuration_type.g.dart';

/// All required configurations/branded applications
class ConfigurationType extends EnumClass {
  static const ConfigurationType daymemoryProd = _$daymemoryProd;
  static const ConfigurationType daymemoryDesktop = _$daymemoryDesktop;

  const ConfigurationType._(String name) : super(name);

  static BuiltSet<ConfigurationType> get values => _$configurationTypeValues;

  static ConfigurationType valueOf(String name) => _$configurationTypeValueOf(name);
}
