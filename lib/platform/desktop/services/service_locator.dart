import 'package:daymemory/platform/desktop/services/dekstop_image_selector_service.dart';
import 'package:daymemory/platform/desktop/services/desktop_video_thumbnail_service.dart';
import 'package:daymemory/platform/desktop/services/folder_resolver.dart';
import 'package:daymemory/platform/desktop/services/local_auth_service.dart';
import 'package:daymemory/platform/desktop/services/logging_service.dart';
import 'package:daymemory/services/file_selector_service/file_selector_service.dart';
import 'package:daymemory/services/local_auth_service/local_auth_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/storage/file-storage/folder_resolver.dart';
import 'package:daymemory/services/video_thumbnail_service/video_thumbnail_service.dart';

class DesktopPlatformDependencyResolver extends PlatformDependencyResolver {
  DesktopPlatformDependencyResolver({required super.getIt}) : super();

  @override
  Future<ILoggingService> createLoggingService() async {
    return await DesktopLoggingService().init();
  }

  @override
  IFileSelectorService createFileSelectorService() {
    return DesktopFileSelectorService(
      loggingService: getIt.get(),
    );
  }

  @override
  IContextService createContextService(DeviceType deviceType) {
    return ContextService(
      routeDefinitionService: getIt.get(
        instanceName: RouteType.frame.toString(),
      ),
    );
  }

  @override
  IFolderResolver createFolderResolver() {
    return DesktopFolderResolver();
  }

  @override
  ILocalAuthService createLocalAuthService() {
    return DesktopLocalAuthService();
  }

  @override
  IVideoThumbnailService createVideoThumbnailService() {
    return DesktopVideoThumbnailService(
      loggingService: getIt.get(),
    );
  }
}
