import 'package:daymemory/services/async_service_initializer.dart';

abstract class ILaunchDelayService {}

/// Launch delay service for providing smooth animation in start
class LaunchDelayService implements ILaunchDelayService, IAsyncServiceInitializer<ILaunchDelayService> {
  @override
  Future<ILaunchDelayService> init() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    return this;
  }
}
