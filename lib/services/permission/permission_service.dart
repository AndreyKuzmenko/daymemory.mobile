import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class IPermissionService {
  Future<bool> notificationsEnabled();

  Future<bool> requestNotificationPermission();
}

class PermissionService implements IPermissionService {
  @override
  Future<bool> notificationsEnabled() async {
    final result = await Permission.notification.isGranted;
    return result;
  }

  @override
  Future<bool> requestNotificationPermission() async {
    final result = await FirebaseMessaging.instance.requestPermission();
    return result.authorizationStatus == AuthorizationStatus.authorized;
  }
}
