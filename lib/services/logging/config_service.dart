import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/services/async_service_initializer.dart';

abstract class IConfigService {
  ConfigurationSettings get settings;
}

class ConfigService implements IConfigService, IAsyncServiceInitializer<IConfigService> {
  @override
  final ConfigurationSettings settings;

  ConfigService(this.settings);

  @override
  Future<IConfigService> init() async {
    return this;
  }
}
