
import 'dart:convert';

// import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:bac_a_bank/core/plugin/notification_plugin.dart';
import 'package:bac_a_bank/core/ulitis/utils.dart';
import 'package:bac_a_bank/core/widgets/dialog/dialog_custom.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/constants.dart';
import '../../core/public/global_utils.dart';
import '../../core/public/public_widget.dart';
import '../../screens/login/login_screen.dart';
import '../../screens/login/login_service.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:easy_localization/easy_localization.dart';

import 'styles/style.dart';

// ignore: use_key_in_widget_constructors
class ScreenRootPage extends StatelessWidget {
  final loginService = LoginService();
 packageInfo() async {
  final packe  = await PackageInfo.fromPlatform();
    Constants.VERSION_APP =   packe.version;
 }

  onNotificationInLowerVersions(ReceivedNotification receivedNotification) {
    print('Notification Received ${receivedNotification.id}');
  }

  onNotificationClick(String payload,BuildContext context) async {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return DialogWidgetOneButtonCustom(
            title: 'fingerprint.notif',
            contextDialog: context,
            textSubmit: "point-management.cancel".tr(),
            childWidget: Container(
              padding: EdgeInsets.all(height_16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Linkify(
                    onOpen: (link) async {
                      if (await canLaunch(link.url)) {
                        await launch(link.url);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    text: jsonDecode(payload)['body'],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize_10,
                    ),
                    linkStyle: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    height: height_8,
                  ),
                ],
              ),
            ),
          );
        });

  }
  @override
  Widget build(BuildContext context) {

    print("INIT FCM");
    notificationPlugin
        .setListenerForLowerVersions(onNotificationInLowerVersions);
    notificationPlugin.setOnNotificationClick(onNotificationClick);
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    //   print("onMessage");
    //
    //   RemoteNotification notification = message.notification;
    //   AndroidNotification android = message.notification?.android;
    //   if (notification != null && android != null) {
    //     await notificationPlugin.scheduleNotification(
    //         title: notification.title,
    //         content: notification.body,
    //         payload: json.encode(message.data));
    //   }
    // });
    // FirebaseMessaging.instance
    //     .getInitialMessage()
    //     .then((RemoteMessage message) {
    //   print("instance");
    //
    //   if (message != null) {
    //     onNotificationClick(json.encode(message.data),context);
    //   }
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print("onMessageOpenedApp");
    //   print(message.data);
    //   onNotificationClick(json.encode(message.data),context);
    // });

  //  ScreenUtil.init(context);/

    // lay du lieu tieng anh va lay deviceId
    // ! gan ngon ngu xem dung ngon ngu gi
    if(context.locale.toString()=="vi"){
      GlobalUtils.LANGUAGE="vi_VN";
    }else{
      GlobalUtils.LANGUAGE="en_US";
    }
    // lấy luôn deviceId
    Utils.getDeviceId().then((value) {
      GlobalUtils.DEVICE_ID = value;
    });
    
 // laays thoong tin version app 
        packageInfo();
    return LoginScreen();
  }
}
