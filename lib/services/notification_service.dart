// ignore: file_names
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// ignore: depend_on_referenced_packages
import 'package:timezone/data/latest.dart' as tz;
// ignore: depend_on_referenced_packages
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final NotificationService _notificationService = NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  // ignore: constant_identifier_names
  static const channel_id = "125";

  Future<void> initPushNotifications() async {
    if (!kIsWeb) {
      var res = await NotificationService().requestPermissions();
      if (res || Platform.isAndroid) {
        var token = await FirebaseMessaging.instance.getToken();
        if (token != null) {
          await saveTokenToDatabase(token);
          FirebaseMessaging.instance.onTokenRefresh.listen(saveTokenToDatabase);
        }
      }
    }
  }

  Future<void> disablePushNotifications() async {
    await saveTokenToDatabase("");
  }

  Future<void> saveTokenToDatabase(String token) async {
    //await GetIt.instance.get<UserRepository>().saveNotificationToken(token);
  }

  void onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
  }

  void onDidReceiveNotificationResponse(NotificationResponse details) async {
    // display a dialog with the notification details, tap ok to go to another page
  }

  Future<void> initLocal() async {
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('ic_notification');

    final DarwinInitializationSettings initializationSettingsDarwin = DarwinInitializationSettings(onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    final InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsDarwin);
    flutterLocalNotificationsPlugin.initialize(initializationSettings, onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);

    // final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings(
    //   requestSoundPermission: false,
    //   requestBadgePermission: false,
    //   requestAlertPermission: false,
    //   onDidReceiveLocalNotification: (id, title, body, payload) {},
    // );

    //final InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid, iOS: initializationSettingsIOS, macOS: null);

    tz.initializeTimeZones();

    //await flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: selectNotification);
  }

  final AndroidNotificationDetails _androidNotificationDetails = const AndroidNotificationDetails(
    'channel ID',
    'channel name',
    playSound: true,
    //color: Consts.primaryColor,
    priority: Priority.high,
    importance: Importance.high,
  );

  Future<void> scheduleNotification(int id, String title, String text, DateTime dateTime) async {
    var time = tz.TZDateTime.fromMillisecondsSinceEpoch(tz.local, dateTime.millisecondsSinceEpoch);

    await flutterLocalNotificationsPlugin.zonedSchedule(id, title, text, time, NotificationDetails(android: _androidNotificationDetails),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime);
  }

  Future<bool> requestPermissions() async {
    final bool? result = await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    return result ?? false;
  }

  Future<void> cancelNotifications(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  Future<void> cancelAllNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  Future selectNotification(String? payload) async {
    //handle your logic here
  }
}
