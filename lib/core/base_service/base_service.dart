import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../screens/login/login_notifier.dart';
import '../../screens/login/login_screen.dart';
import '../../screens/menu/menu_notifier.dart';
import '../constants/status.dart';
import '../data_local/share_prefer_utils.dart';
import '../navigates.dart';
import '../public/public_widget.dart';
import '../widgets/dialog/core_toast.dart';
import '../widgets/dialog/dialog_alert.dart';

class BaseServices {
  BaseServices(this.dio);
  Dio? dio;

  // ignore: strict_raw_type
  String errorApiCallback(
      // ignore: strict_raw_type
          {Response? response,
        String? errorModel}) {
    if (response != null) {
      // Toast.showLongTop(response.statusMessage);
    } else {

//  *** Request ***
//  *** DioError ***:
//  onError catch + DioError [DioErrorType.DEFAULT]: RangeError (index): Invalid value: Only valid value is 0: 1
//       Toast.showLongTop(errorModel);
    }
    return '';
  }

  Future<dynamic> createPost(
      String? subUri, {
        // ignore: avoid_positional_boolean_parameters
        bool showLoading = false,
        dynamic body,
        // ignore: avoid_positional_boolean_parameters
        BuildContext? context,
      }) async {
    /// Check xem có mạng không
    var connectivityResult = await (Connectivity().checkConnectivity());
    switch(connectivityResult){
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        print("ok");
        break;
      case ConnectivityResult.none:
        errorApiCallback(
            response: Response(statusMessage: "common.network".tr(), requestOptions: RequestOptions()), errorModel: ErrorModel.netError);
        return;
      case ConnectivityResult.bluetooth:
        // TODO: Handle this case.
        break;
      case ConnectivityResult.ethernet:
        // TODO: Handle this case.
        break;
      case ConnectivityResult.vpn:
        // TODO: Handle this case.
        break;
      case ConnectivityResult.other:
        // TODO: Handle this case.
        break;
    }

    if (showLoading) {
      DialogAlert.showMLoadding(context!);
    }

    try {
      final Response<dynamic> response =
      await dio!.post(subUri!, data: body ?? {});
      if (showLoading) {
        // Navigator.of(context).pop(true);
        Navigator.pop(context!);
      }
      if (response.statusCode != null) {
        if (response.data == StatusApi.SERVE_RESPONSE_TEXT_ERROR500) {
          //! Check Lúc DEV môi trường thật chạy không dc lỗi này(có lỗi là do serve)
          final Map<dynamic, dynamic> data = {
            'responseCode': StatusApi.SERVE_RESPONSE_TEXT_ERROR500,
            'message':
            'LỖI Hệ thống vui lòng quay lại sau! (ERROR500 ${subUri})'
          };

          DialogAlert.showDialogAlertCancel(context!, Public().languageCustom("common.common-error"),);
          // Toast.showLongTop(data['message']);
          // NavigatesApp.pushReplacementNamed(context, LoginScreen.routeName);
          return;
        } else if (response.data['responseCode'] ==
            StatusApi.STATUS_INVALID_REQUEST_PARAMETER_SECT07) {
          //* Sai param chuyển lên
          final Map<dynamic, dynamic> data = {
            'responseCode': StatusApi.STATUS_INVALID_REQUEST_PARAMETER_SECT07,
            'message': 'StatusApi.STATUS_INVALID_REQUEST_PARAMETER_SECT07'
          };
          //DialogAlert.showDialogAlertCancel(context, Public().languageCustom("common.common-error"),);

          // Toast.showLongTop(response.data['message']);
          return;
        } else if (response.data['responseCode'] ==
            StatusApi.LOGIN_SECTION_EXPIRED_SECT01) {
          //* HẾT HẠN PHIÊN ĐĂNG NHẬP
          // Toast.showLongTop(response.data['message']);
          SharePreferUtils.logOutApp();
          Provider.of<MenuNotifier>(context!, listen: false).setListMenu(null);
          Toast.showLongTop(Public().languageCustom("common.token-info"));
          NavigatesApp.pushReplacementNamed(context, LoginScreen.routeName);
          Provider.of<LoginNotifier>(context!,listen: false).getCountNotification(context);// lấy số thông báo
          return;
        } else {
          return response.data;
        }
      }
    } on DioError catch (onError ) {
      print('onError catch + ${onError.type.index}');
      if (showLoading) {
        Navigator.pop(context!);
      }
      switch (onError.type.index) {
        case 0:
          errorApiCallback(
              response: onError.response, errorModel: ErrorModel.timeOutError);
          break;
        case 5:
          errorApiCallback(
              response: onError.response, errorModel: ErrorModel.netError);
          break;
        default:
          errorApiCallback(
              response: onError.response, errorModel: onError.message);
          break;
      }
    }
  }
}

class ErrorModel {
  // ignore: avoid_classes_with_only_static_members
  static String netError =
      'Kết nối mạng không ổn định hoặc cần được gia hạn. Vui lòng kiểm tra kết nối của bạn và thử lại';
  static String unAuthorized = 'Thông tin xác thực không chính xác.';
  static String banned = 'Bạn không đủ quyền hạn thực hiện hành động này.';
  static String notFindPackageInfo =
      'Không tìm thấy thông tin khóa học. Vui lòng thử lại';
  static String userInvailid =
      'Thông tin xác thực không đúng, Vui lòng liên hệ bộ phận hỗ trợ để nhận được hướng dẫn!';
  static String otherError = 'Đã xảy ra lỗi bất ngờ. Xin vui lòng thử lại sau.';
  static String timeOutError = 'Quá thời gian kết nối xin vui lòng quay lại sau!';
  static String notFound = 'Not Found'; // Đường dẫn api sai
  static String unknown = 'Unknown';
  static String methodNotAllowed = 'Method Not Allowed'; // phương thức sai

}
