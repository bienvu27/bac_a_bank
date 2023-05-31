import 'dart:convert';
import 'dart:io';
import 'package:device_info/device_info.dart';

import '../public/global_utils.dart';
class Utils {

  static Future<String> getDeviceId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      GlobalUtils.DEVICE_INFO = iosDeviceInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      GlobalUtils.DEVICE_INFO = androidDeviceInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }


  static dynamic convertStringToJson(String data) {
    return jsonDecode(data);
  }
}