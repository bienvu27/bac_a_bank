// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'core/styles/theme_data.dart';

// ignore: prefer_mixin
class AppNotifier with ChangeNotifier {
  ThemeData? _themeData;

  // ignore: sort_constructors_first
  AppNotifier() {
    this._themeData = modeOrange;
    // notificationApp();
  }

//   notificationApp() async {
//     await Firebase.initializeApp();
//     // lấy token của firebase
//     try {
//       FirebaseMessaging.instance.onTokenRefresh;
//       FirebaseMessaging.instance.getToken().then((token) {
//         GlobalUtils.NOTI_TOKEN = token;
//         SharePreferUtils.saveFCMToken(token);
//       });
//     } catch (e) {
//       Toast.showLong("error getToken firebase");
//     }
//
// // subtopic của firebase
//     try {
//       FirebaseMessaging.instance
//           .subscribeToTopic('news')
//           .then((sub) => {print('sub notification thanh cong ')});
//     } catch (e) {
//       Toast.showLong("error subscribeToTopic firebase");
//     }
//     // await FirebaseMessaging.instance.subscribeToTopic('fcm_test');
//     //
//     // String token = await FirebaseMessaging.instance.getAPNSToken();
//   }

  // ignore: inference_failure_on_function_return_type
  ThemeData? get getThemeData => _themeData;

  // ignore: inference_failure_on_function_return_type, always_declare_return_types
  setThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // ignore: inference_failure_on_function_return_type

  // ignore: inference_failure_on_function_return_type, always_declare_return_types

  @override
  void dispose() {
    print("auto dispose State App Notifier");
    super.dispose();
  }
}