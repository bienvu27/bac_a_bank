import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../screens/login/login_model.dart';
import '../constants/constants.dart';

class SharePreferUtils {
  static Future<String> getFCMToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String fcmToken = pref.getString(Constants.TOKEN) ?? "";
    return fcmToken;
  }

  static logOutApp() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("Đăng xuất xóa token");
    //await preferences.remove(Constants.ACCESS_TOKEN);

    // await preferences.remove(Constants.USER_INFO);
    // await preferences.remove(Utility.KEY);
    // await preferences.remove(Utility.KEY_CHECK);
  }

  static Future<int?> getCompleteSplash() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt(Constants.COMPLETE_SPLASH);
  }

  static Future<List<String>> getEmailDelete() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    List<String> emails = pref.getStringList(Constants.EMAIL_DELETE)??[];
    return emails;
  }

  static Future<LoginResponse?> getUserInfo() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? data = pref.getString(Constants.USER_INFO);
    if (data != null) {
      Map<String, dynamic> userMap = json.decode(data);
      final userInfo = LoginResponse.fromJson(userMap);

      return userInfo;
    }
    return null;
  }

  static Future<void> setCompleteSplash() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt(Constants.COMPLETE_SPLASH, 1);
  }

}
