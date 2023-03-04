import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/configuration/type/configuration_type.dart';
import 'package:daymemory/platform/main_desktop.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: 'env/daymemory_desktop.env');
  final settings = ConfigurationSettings.prepareForType(
    ConfigurationType.daymemoryDesktop,
  );
  runAppWithConfiguration(settings);
}
