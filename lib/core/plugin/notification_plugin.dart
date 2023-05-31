import 'dart:io' show Platform;

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';

class NotificationPlugin {
  //
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
  final BehaviorSubject<ReceivedNotification>
  didReceivedLocalNotificationSubject =
  BehaviorSubject<ReceivedNotification>();
  dynamic initializationSettings;

  NotificationPlugin._() {
    init();
  }

  init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    if (Platform.isIOS) {
      _requestIOSPermission();
    }
    initializePlatformSpecifics();
  }

  initializePlatformSpecifics() {
    // var initializationSettingsAndroid =
    //     AndroidInitializationSettings('launcher_icon');
    // var initializationSettingsIOS = IOSInitializationSettings(
    //   requestAlertPermission: true,
    //   requestBadgePermission: true,
    //   requestSoundPermission: false,
    //   onDidReceiveLocalNotification: (id, title, body, payload) async {
    //     ReceivedNotification receivedNotification = ReceivedNotification(
    //         id: id, title: title, body: body, payload: payload);
    //     didReceivedLocalNotificationSubject.add(receivedNotification);
    //   },
    // );
    //
    // initializationSettings = InitializationSettings(
    //     android:initializationSettingsAndroid, iOS:initializationSettingsIOS);
  }

  _requestIOSPermission() {
    flutterLocalNotificationsPlugin
        ?.resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
      alert: false,
      badge: true,
      sound: true,
    );
  }

  setListenerForLowerVersions(Function onNotificationInLowerVersions) {
    didReceivedLocalNotificationSubject.listen((receivedNotification) {
      onNotificationInLowerVersions(receivedNotification);
    });
  }

  setOnNotificationClick(Function onNotificationClick) async {
    // await flutterLocalNotificationsPlugin.initialize(initializationSettings,
    //     onSelectNotification: (String payload) async {
    //   onNotificationClick(payload);
    // });
  }

  Future<void> scheduleNotification({String? title, String? content, dynamic payload}) async {
    // var androidChannelSpecifics = AndroidNotificationDetails(
    //   'CHANNEL_ID',
    //   'CHANNEL_NAME',
    //   "CHANNEL_DESCRIPTION",
    //   icon: 'launcher_icon',
    //   importance: Importance.max,
    //   priority: Priority.high,
    //   playSound: true,
    // );
    // var iosChannelSpecifics = IOSNotificationDetails();
    // var platformChannelSpecifics = NotificationDetails(
    //   android: androidChannelSpecifics,
    //   iOS: iosChannelSpecifics
    // );
    // await flutterLocalNotificationsPlugin.show(
    //   1,
    //   title,
    //   content,
    //   platformChannelSpecifics,
    //   payload: payload,
    // );
  }

  Future<int> getPendingNotificationCount() async {
    List<PendingNotificationRequest> p =
    await flutterLocalNotificationsPlugin!.pendingNotificationRequests();
    return p.length;
  }

  Future<void> cancelNotification() async {
    await flutterLocalNotificationsPlugin!.cancel(0);
  }

  Future<void> cancelAllNotification() async {
    await flutterLocalNotificationsPlugin!.cancelAll();
  }
}

NotificationPlugin notificationPlugin = NotificationPlugin._();

class ReceivedNotification {
  final int? id;
  final String? title;
  final String? body;
  final String? payload;

  ReceivedNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.payload,
  });
}