import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/services/auth_service/auth_service.dart';
import 'package:daymemory/services/clipboard_service/clipboard_service.dart';
import 'package:daymemory/services/email_sender_service/email_sender_service.dart';
import 'package:daymemory/services/encrypt_service/encrypt_service.dart';
import 'package:daymemory/services/file_selector_service/file_selector_service.dart';
import 'package:daymemory/services/image_resizer_service/image_resizer_service.dart';
import 'package:daymemory/services/navigation/frame_route_definition.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/navigation/mobile_navigation_service.dart';
import 'package:daymemory/services/navigation/mobile_route_definition.dart';
import 'package:daymemory/services/navigation/generic_navigation_service.dart';
import 'package:daymemory/services/navigation/generic_route_definition.dart';
import 'package:daymemory/services/network/network_file_service.dart';
import 'package:daymemory/services/network/network_note_service.dart';
import 'package:daymemory/services/network/network_notebook_service.dart';
import 'package:daymemory/services/network/network_question_list_service.dart';
import 'package:daymemory/services/network/network_tag_service.dart';
import 'package:daymemory/services/network/network_user_service.dart';
import 'package:daymemory/services/storage/database/db_creator.dart';
import 'package:daymemory/services/storage/database/db_note_service.dart';
import 'package:daymemory/redux/store.dart';
import 'package:daymemory/services/connection_service/connection_service.dart';
import 'package:daymemory/services/device_service/device_service.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/geolocator_service/geolocator_service.dart';
import 'package:daymemory/services/jailbreak_service/jailbreak_service.dart';
import 'package:daymemory/services/launch_delay/launch_delay_service.dart';
import 'package:daymemory/services/local_auth_service/local_auth_service.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/logging/config_service.dart';
import 'package:daymemory/services/navigation/context_service.dart';
import 'package:daymemory/services/navigation/interface_navigation_service.dart';
import 'package:daymemory/services/permission/permission_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/storage/database/db_notebook_service.dart';
import 'package:daymemory/services/storage/database/db_tag_service.dart';
import 'package:daymemory/services/storage/file-storage/folder_resolver.dart';
import 'package:daymemory/services/storage/interfaces/interface_notebook_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_tag_service.dart';
import 'package:daymemory/services/storage/storage_service.dart';
import 'package:daymemory/services/storage/file-storage/file_service.dart';
import 'package:daymemory/services/network/network_sync_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_note_service.dart';
import 'package:daymemory/services/storage/interfaces/interface_storage_service.dart';
import 'package:daymemory/services/store/store_service.dart';
import 'package:daymemory/services/video_thumbnail_service/video_thumbnail_service.dart';
import 'package:get_it/get_it.dart';
import 'dialog/dialog_service.dart';

abstract class PlatformDependencyResolver {
  final GetIt getIt;

  PlatformDependencyResolver({required this.getIt});

  Future<ILoggingService> createLoggingService();

  IFolderResolver createFolderResolver();

  IFileSelectorService createFileSelectorService();

  IVideoThumbnailService createVideoThumbnailService();

  ILocalAuthService createLocalAuthService();

  IContextService createContextService(DeviceType deviceType);
}

class MobileTabletPlatformDependencyResolver extends PlatformDependencyResolver {
  MobileTabletPlatformDependencyResolver({required super.getIt}) : super();

  @override
  Future<ILoggingService> createLoggingService() async {
    return await LoggingService().init();
  }

  @override
  IFolderResolver createFolderResolver() {
    return MobileFolderResolver();
  }

  @override
  IFileSelectorService createFileSelectorService() {
    return FileSelectorService(
      loggingService: getIt.get(),
    );
  }

  @override
  IVideoThumbnailService createVideoThumbnailService() {
    return MobileVideoThumbnailService(
      loggingService: getIt.get(),
    );
  }

  @override
  IContextService createContextService(DeviceType deviceType) {
    return ContextService(
      routeDefinitionService: getIt.get(
        instanceName: deviceType == DeviceType.phone ? RouteType.mobile.toString() : RouteType.frame.toString(),
      ),
    );
  }

  @override
  ILocalAuthService createLocalAuthService() {
    return LocalAuthService();
  }
}

class ServiceLocator {
  static final getIt = GetIt.I;

  ConfigurationSettings settings;
  DeviceType deviceType;
  PlatformDependencyResolver dependencyResolver;

  ServiceLocator({
    required this.settings,
    required this.deviceType,
    required this.dependencyResolver,
  });

  void initDependencies() {
    getIt.registerSingletonAsync<ILaunchDelayService>(() => LaunchDelayService().init());
    getIt.registerSingletonAsync<IConnectionService>(
      () => ConnectionService().init(),
    );

    getIt.registerSingletonAsync<ISettingsService>(
      () => SettingsService().init(),
    );

    getIt.registerSingletonAsync<IDeviceService>(() async => DeviceService());

    getIt.registerSingleton<IEncryptService>(EncryptService());
    getIt.registerSingleton<IPermissionService>(PermissionService());
    getIt.registerSingleton<IGeolocatorService>(GeolocatorService());
    getIt.registerSingleton<IJailbreakService>(JailbreakService());
    getIt.registerSingleton<IClipboardService>(ClipboardService());
    getIt.registerSingleton<IEmailSenderService>(EmailSenderService());
    getIt.registerSingleton<IImageResizerService>(ImageResizerService());

    getIt.registerSingleton<IRouteDefinitionService>(MobileRouteDefinitionService(), instanceName: RouteType.mobile.toString());
    getIt.registerSingleton<IRouteDefinitionService>(FrameDefinitionService(), instanceName: RouteType.frame.toString());
    getIt.registerSingleton<IRouteDefinitionService>(GenericRouteDefinitionService(), instanceName: RouteType.generic.toString());

    getIt.registerSingleton<INavigationService>(
      MobileNavigationService(routeDefinitionService: getIt.get(instanceName: RouteType.mobile.toString())),
      instanceName: RouteType.mobile.toString(),
    );

    getIt.registerSingleton<INavigationService>(
      GenericNavigationService(
        genericRouteDefinitionService: getIt.get(instanceName: RouteType.generic.toString()),
        frameRouteDefinitionService: getIt.get(instanceName: RouteType.frame.toString()),
      ),
      instanceName: RouteType.generic.toString(),
    );

    getIt.registerSingleton<IDbCreator>(DbCreator());

    getIt.registerSingletonWithDependencies<INetworkUserService>(
      () => NetworkUserService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ).init(),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingletonWithDependencies<INetworkNoteService>(
      () => NetworkNoteService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ).init(),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingletonWithDependencies<INetworkFileService>(
      () => NetworkFileService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ).init(),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingletonWithDependencies<INetworkTagService>(
      () => NetworkTagService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingletonWithDependencies<INetworkNotebookService>(
      () => NetworkNotebookService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingletonWithDependencies<INetworkQuestionListService>(
      () => NetworkQuestionListService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingletonWithDependencies<INetworkSyncService>(
      () => NetworkSyncService(
        apiUrl: settings.apiUrl,
        settingsService: getIt.get(),
      ),
      dependsOn: [ISettingsService],
    );

    getIt.registerSingleton<IContextService>(dependencyResolver.createContextService(deviceType));

    getIt.registerSingleton<IDialogService>(DialogService(contextService: getIt.get()));

    getIt.registerSingleton<ILocalAuthService>(dependencyResolver.createLocalAuthService());

    getIt.registerSingletonAsync<IDeviceInfoService>(
      () => DeviceInfoService().init(),
    );

    getIt.registerSingletonAsync<ILoggingService>(() => dependencyResolver.createLoggingService());

    getIt.registerSingletonWithDependencies<IFileSelectorService>(
      () => dependencyResolver.createFileSelectorService(),
      dependsOn: [ILoggingService],
    );

    getIt.registerSingletonWithDependencies<IVideoThumbnailService>(
      () => dependencyResolver.createVideoThumbnailService(),
      dependsOn: [ILoggingService],
    );

    getIt.registerSingleton<IFolderResolver>(dependencyResolver.createFolderResolver());

    getIt.registerSingletonWithDependencies<IFileService>(
      () => FileService(
        loggingService: getIt.get(),
        folderResolver: getIt.get(),
        imageResizerService: getIt.get(),
      ),
      dependsOn: [ILoggingService],
    );

    getIt.registerSingletonWithDependencies<INoteService>(
      () => DbNoteService(
        fileService: getIt.get(),
        dbCreator: getIt.get(),
      ),
      dependsOn: [IFileService],
    );

    getIt.registerSingletonWithDependencies<IAuthService>(
      () => AuthService(
        loggingService: getIt.get(),
      ),
      dependsOn: [ILoggingService],
    );

    getIt.registerSingleton<ITagService>(DbTagService(
      dbCreator: getIt.get(),
    ));

    getIt.registerSingletonWithDependencies<INotebookService>(
        () => DbNotebookService(
              dbCreator: getIt.get(),
              noteService: getIt.get(),
            ),
        dependsOn: [INoteService]);

    getIt.registerSingletonWithDependencies<IStorageService>(
      () => StorageService(
        fileService: getIt.get(),
        dbCreator: getIt.get(),
      ),
      dependsOn: [IFileService],
    );

    getIt.registerSingletonAsync<IConfigService>(() => ConfigService(settings).init());
    getIt.registerSingletonWithDependencies<IStoreService>(
      () => initStore(),
      dependsOn: [
        IConnectionService,
        ILoggingService,
        INetworkNoteService,
        INetworkNotebookService,
        INotebookService,
        IConfigService,
        ISettingsService,
        IDeviceInfoService,
        IDeviceService,
      ],
    );
  }
}
