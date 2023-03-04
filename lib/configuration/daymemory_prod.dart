import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/configuration/type/configuration_type.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../main.dart';

void main() async {
  await dotenv.load(fileName: 'env/daymemory_prod.env');
  final settings = ConfigurationSettings.prepareForType(
    ConfigurationType.daymemoryProd,
  );
  runAppWithConfiguration(settings);
}
