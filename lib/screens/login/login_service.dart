import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';

// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';

import '../../config/root_api.dart';

import '../../core/base_service/api_dio.dart';

import '../../core/common/common_service.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/status.dart';
import '../../core/constants/url_static.dart';
import '../../core/data_local/share_prefer_utils.dart';
import '../../core/model/base_response_model.dart';
import '../../core/navigates.dart';
import '../../core/public/global_utils.dart';
import '../../core/public/public_widget.dart';
import '../../core/ulitis/utils.dart';
import '../../core/widgets/dialog/core_toast.dart';
import '../../core/widgets/dialog/dialog_alert.dart';

import '../../screens/login/login_notifier.dart';
import '../../screens/menu/menu_model.dart';
import '../../screens/menu/menu_notifier.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_interface.dart';
import 'login_model.dart';
import 'login_screen.dart';

class LoginService implements ILoginInterface {
  CommonService commonService = CommonService();
  String? tranSn;
  ActiveSmartOtpStep1Notifier activeSmartOtpStep1Notifier =
      ActiveSmartOtpStep1Notifier();
  var serialNoVarible = "";

  @override
  login(LoginRequest request, BuildContext context, {bool smartOtp}) async {
    //check xem đã nhập usename hay chưa
    if (request.username.isEmpty) {
      DialogAlert.showDialogAlertCancel(context, 'login.empty_finger',
          translate: true);
      return;
    }

    final userInformationLocal = await SharePreferUtils.getUserInfo();
    if (userInformationLocal != null) {
      //check đang nhập cả bằng số điẹn thoại
      /// Check xem tài khoản có đăng nhập bằng tài khoản khác không
      if ((userInformationLocal.userName == request.username) ||
          (userInformationLocal.phoneNumber == request.username)||
          (userInformationLocal.userName==userInformationLocal.phoneNumber)
      ) {
        // check xem là user cũ hay mới là một máy hay máy khác để gửi request lên khác nhau
        if (request.deviceId != null) {
          request.setOtpNo = null;
        };
        request.setSerialNo = userInformationLocal.serialNo;
        serialNoVarible = userInformationLocal.serialNo;
      } else {
        GlobalUtils.LogOutAll();
      }
    } else {
        GlobalUtils.LogOutAll();
    }
    final result = await ApiDio.getInstance().createPost(
        UrlStatic.API_AUTHENTICATION,
        showLoading: true,
        body: request.toMap(),
        context: context);
    request.tranSn= result['tranSn'];
    tranSn=result['tranSn'];
    // check version xem có phù hơp không
    checkVersionApp(context, request, result, smartOtp: smartOtp);

  }

  checkVersionApp(BuildContext context, LoginRequest request, result,
      {bool smartOtp}) {
    print("checkVersionApp");
    if (result != null) if (result['versionAppMobile'] != null) {
      print(result['versionAppMobile']);
      int version = result['versionAppMobile'].indexOf(Constants.VERSION_APP);
      if (version == -1) {
        if (Constants.VERSION_APP.substring(0, 3) ==
            result['versionAppMobile'].substring(0, 3)) {
          DialogAlert.showDialogAlertCancelOk(
              context, Public().languageCustom('common.invalid_version'),
              btnOk: () {
                StoreRedirect.redirect(androidAppId: Constants.PACKAGE_NAME,
                    iOSAppId: Constants.PACKAGE_ID);
          }, btnCancel: () async {
            // doi version de giong vs version moi nhat tren response
            request.version = LoginResponse.fromJson(result).versionAppMobile;
            Constants.VERSION_APP = LoginResponse.fromJson(result).versionAppMobile;
            login(request,context,smartOtp: smartOtp);
          });
          return;
        } else {
          print(request.username);
          /// Trigger để duyệt app khi đẩy
          // if(request.username=="180058666"){
            DialogAlert.showDialogAlertCancelOk(
                context, Public().languageCustom('common.invalid_version'),
                btnOk: () {
                  StoreRedirect.redirect(androidAppId: Constants.PACKAGE_NAME,
                      iOSAppId: Constants.PACKAGE_ID);
                }, btnCancel: () async {
              // doi version de giong vs version moi nhat tren response
              request.version = LoginResponse.fromJson(result).versionAppMobile;
              Constants.VERSION_APP = LoginResponse.fromJson(result).versionAppMobile;
              login(request,context,smartOtp: smartOtp);
            });
          // }else{
          //   DialogAlert.showDialogAlertCancel(
          //       context, Public().languageCustom('common.invalid_version'),
          //       btnOk: () {
          //         StoreRedirect.redirect(androidAppId: Constants.PACKAGE_NAME,
          //             iOSAppId: Constants.PACKAGE_ID);
          //   });
          // }

          return;
        }
      }
      // tiếp đến gọi verifyAuthentication
      verifyAuthentication(
          request, LoginResponse.fromJson(result), result, context,
          smartOtp: smartOtp);
    } else {
      // tiếp đến gọi verifyAuthentication
      verifyAuthentication(
          request, LoginResponse.fromJson(result), result, context,
          smartOtp: smartOtp);
    }
  }

// ! check luồng authentication để điều hướng
  void verifyAuthentication(LoginRequest request, LoginResponse result,
      Map<dynamic, dynamic> resultMap, BuildContext context,
      {bool smartOtp}) async {
    print("verifyAuthentication");
    // lay token 1 lần nữa
    // try{
    //   FirebaseMessaging.instance.getToken().then(
    //           (token) => {GlobalUtils.NOTI_TOKEN = token, print(token.toString())});
    // }catch(e){
    //   smartOtpService.writeLogMobileApp(context,ModelWriteLogApp(
    //     reqContent: "userId: ${result.userId}",
    //     href: UrlStatic.API_AUTHENTICATION,
    //     respContent: result.toString(),
    //     description: 'Máy không hỗ trợ firebase',));
    //   print(e);
    // }
    print(result.responseCode);
    switch (result.responseCode) {
      case StatusApi.STATUS_LOGIN_AUTHORIZED_FIRST: // login lan dau

        if (result.rulePass == null) {
          // show otp xong mới chuyển sang màn hình đổi mât khẩu
          showOtpInput(result, context, request,
              smartOtp: smartOtp, firstLogin: true);
        } else {
          /// Show thông báo lên ib đổi mật khẩu
          DialogAlert.showDialogAlertCancel(context, result.message,
              translate: false);
        }

        break;
      case StatusApi
          .STATUS_LOGIN_AUTHORIZED_SWITCH_DEVICE: // login bang may khac
        await SharePreferUtils.getSerialNo().then((seriesNo) => {
              if (seriesNo == null || seriesNo == '')
                {showOtpInput(result, context, request, smartOtp: smartOtp)}
            });

        break;
      case StatusApi
          .STATUS_LOGIN_LOCK_ACCOUNT: // tài khoản bị khóa do nhập sai nhiều lần
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false);
        break;

      case StatusApi.STATUS_LOGIN_AUTHORIZED_EXPIRED: // mk het han
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false,btnOk: (){
              loginStep2VerifyOtp(result, resultMap, context, request.username,
                  firstLogin: true);
        });
        break;
      case StatusApi.STATUS_LOGIN_AUTHORIZED_EXPIRE_WARNING: // thong bao so ngay can doi mk
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false,btnOk: (){
              loginStep2VerifyOtp(result, resultMap, context, request.username);
            });
        break;
      case StatusApi.STATUS_LOGIN_AUTHENTICATION_AUTH00: // login thanh coong
//  trước khi call api thì phải gọi kiểm tra xem có bị lock không
        final userInformationLocal = await SharePreferUtils.getUserInfo();

        if (userInformationLocal != null) {
          final body = {
            "userId": result.userId,
            "status": '',
            "timeLock": Utils.timeStampDate()
          };
          final datas = await lookSmartOtp(context, body);
          print("ABC");
          print(datas);
          GlobalUtils.countLockServe = json.decode(datas['object']);
          if (datas['message'] == "false") {
            switch (GlobalUtils.countLockServe['countLock']) {
              case "2":
                alertLookCountPin(context, Constants.TIMELOCK_2, false);
                break;
              case "3":
                alertLookCountPin(context, Constants.TIMELOCK_FOREVER, true);
                break;

              default:
                alertLookCountPin(context, Constants.TIMELOCK_1, false);
                break;
            }
          } else {
            try{
              if (smartOtp == true) {
                final body = SmartOtpGetActiveCode().copyWith(
                    cifNumber: result.cifNumber,
                    phoneNumber: result.phoneNumber,
                    userID: result.userId,
                    customerName: result.fullName,
                    branchID: result.branchId,
                    email: result.email,
                    userName: result.userName);
                activeSmartOtpStep1Notifier.getCode(context, body);
              } else {
                loginStep2VerifyOtp(result, resultMap, context, request.username);
              }
            }catch(e){
              print(e);
              print("Lỗi");
            }
          }
        } else {
          if (smartOtp == true) {
            final body = SmartOtpGetActiveCode().copyWith(
                cifNumber: result.cifNumber,
                phoneNumber: result.phoneNumber,
                userID: result.userId,
                customerName: result.fullName,
                branchID: result.branchId,
                email: result.email,
                userName: result.userName);
            activeSmartOtpStep1Notifier.getCode(context, body);
          } else {
            loginStep2VerifyOtp(result, resultMap, context, request.username);
          }

        }


        break;

      case StatusApi
          .STATUS_LOGIN_VERSION_UPFATE: // có phiên bản mơi của app yêu cầu update
        print("version cu 1 ");
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false);

        break;
      case StatusApi.STATUS_LOGIN_AUTHORIZED_FAIL_OTP: // sai nhập lại otp

        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false);

        break;

      case StatusApi
          .STATUS_LOGIN_AUTHORIZED_OLD_VERSION: // AUTH15  thông báo phiên bản đã cũ
        print("version cu ");
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false);
        break;

      case StatusApi.STATUS_LOGIN_PFL000: // login van tay that bai
      case StatusApi.STATUS_LOGIN_AUTH14: // login van tay that bai
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false);
        SharePreferUtils.saveBiometric("N");
        break;

      default:
        print("default");
        //  thoong bao retset pass ve trong do nhập sai pass hoặc user na
        DialogAlert.showDialogAlertCancel(context, result.message,
            translate: false);

        break;
    }
  }

  @override
  getAdvertise(BuildContext context) async {
    try {
      final res = await ApiDio.getInstance().createPost(
        SERVER_BASE + UrlStatic.URI_GET_ADVERTISE,
        context: context,
        body: {"lang": GlobalUtils.LANGUAGE},
      );
      if (res != null) {
        BaseResponseModel _resModel = BaseResponseModel.fromMap(res);
        if (_resModel.responseCode == StatusApi.GET_ADVERTISE_SUCCESS) {
          final objectConverted = Utils.convertStringToJson(_resModel.object);
          final listAdvertiseModel = List<AdvertiseModel>.from(
              objectConverted.map((x) => AdvertiseModel.fromJson(x)));
          return listAdvertiseModel;
        }
      } else {
        return [];
      }
    } catch (e) {
      print(e);
    }
  }
// show otp Input

  void showOtpInput(
      LoginResponse data, BuildContext context, LoginRequest request,
      {bool smartOtp, bool firstLogin}) {
    if (data.responseCode == StatusApi.STATUS_LOGIN_AUTHORIZED_FIRST) {
      data.message = 'login.otp.title1'.tr();
    } else if (data.responseCode == StatusApi.STATUS_LOGIN_LOCK_ACCOUNT) {
      // data.message =
      //     AppTranslate.of(context).translate('login.otp.title3');
      data.message = data.message;
    } else if (data.responseCode ==
        StatusApi.STATUS_LOGIN_AUTHORIZED_SWITCH_DEVICE) {
      data.message = 'login.otp.title2'.tr();
    }

    DialogAlert.showMDialogOTP(data.message, context, (otpValue) {
      request.setOtpNo = otpValue;
      login(
        request,
        context,
      );
    });
  }

// login cuối cùng thành công để vào home
  // ignore: avoid_void_async
  void loginStep2VerifyOtp(
      LoginResponse data, Map result, BuildContext context, String username,
      {bool firstLogin}) async {
    DialogAlert.showMLoadding(context);
    /**
     * * Luu thong tin token truoc va userinfo
     */
    await SharePreferUtils.saveAccessToken(data.token);

    final userInformationLocal = await SharePreferUtils.getUserInfo();
    if(userInformationLocal==null){
      Map<String, dynamic> body = {
        "token": GlobalUtils.NOTI_TOKEN,
        "userID": data.userId,
        "isNotification": Constants.NOTIFICATION_Y ,
        "platform": Constants.PLATFORM,
      };
        ApiDio.getInstance().createPost(
          UrlStatic.URI_UPDATE_NOTIFICATION_TOKEN,
          body: body,
          context: context,
          showLoading: true);
      print("bat thong bao");
      Map<String, dynamic> body1 = {
        "notiDebtRemind": Constants.DEBT_NOTIFICATION_Y

      };
       ApiDio.getInstance().createPost(
          UrlStatic.URI_UPDATE_DEBT_NOTIFICATION_TOKEN,
          body: body1,
          context: context,
          showLoading: true);
      result['is_Noti']=Constants.NOTIFICATION_Y;
      result['isDebtNoti']=Constants.DEBT_NOTIFICATION_Y;

    }
    result['userName'] = username;
    await SharePreferUtils.saveUsername(username);

    // check serialNoVarible de luu lai login lan 3 se k bi tra ve ""
    if (result['serialNo'] == "") {
      result['serialNo'] = serialNoVarible;
    }
    await SharePreferUtils.saveUserInfo(result);
    // set userInfo vào loginNotifier
    final userInfo = await SharePreferUtils.getUserInfo();
    Provider.of<LoginNotifier>(context, listen: false)
        .setresponceLogin(userInfo);

//  gọi lấy danh sách tài khoản   // khi thành công thì gọi api lấy danh sách tài khoản inquirySourceAccountList
    final listObjectSourceAccountAll =
        await commonService.inquirySourceAccountList(context);
    ;
    // login xong thì xet dữ liệu cho provider
    Provider.of<CommonNotifier>(context, listen: false)
        .setListObjectSourceAccountAll(listObjectSourceAccountAll);


    // check xem có lấy được tài khoản không nếu k lấy được thì không cho vào
    if (listObjectSourceAccountAll != null) {
      // TODO convert menulist
      innitGetMenu(data).then((value) => {
            // Provider.of<MenuNotifier>(context, listen: false).setListMenu(value),

            Provider.of<MenuNotifier>(context, listen: false)
                .selectMenu(value[0], value),

            if (firstLogin == true)
              {
                NavigatesApp.pushNamed(
                    context, ChangePasswordScreen.routeName, true),
              }
            else
              {
                //  để delay 1s mới tiếp tục vào cho load được dữ liệu
                // Future.delayed(Duration(milliseconds: 1), () {
                //  phải lấy được menu thì mới sang được trang khác
                NavigatesApp.pushNamed(
                    context, MenuPage.routeName, listObjectSourceAccountAll),
              }
          });
    }
  }

// * xử lý lấy ra danh sách chức năng và menu app
  Future<List<MenuModel>> innitGetMenu([LoginResponse data]) async {
    // var menu_Api =
    //     '[{"contains":[{"moduleId":"211001","displayName":"Health_Insurrance","mobileUri":null},{"moduleId":"211002","displayName":"Cancer_Insurrance","mobileUri":null},{"moduleId":"211003","displayName":"Breast_Cancer_Insurrance","mobileUri":"/api/retailBreastCancerInsurranceCreated"},{"moduleId":"211004","displayName":"Extended_Accident_Insurance","mobileUri":"/api/retailExtendedAccidentInsurranceCreated"},{"moduleId":"211009","displayName":"Insurance_Diary","mobileUri":null}],"moduleId":2110,"title":"insurance"},{"contains":[{"moduleId":"210101","displayName":"Thông tin tài khoản","mobileUri":"/api/inquiryAccountInfo"},{"moduleId":"210102","displayName":"Lịch sử giao dịch","mobileUri":"/api/inquiryAccountTrans"},{"moduleId":"210103","displayName":"Quản lý DS tài khoản thụ hưởng","mobileUri":"/api/updateBeneficiaryAccount"},{"moduleId":"210209","displayName":"Thay đổi hạn mức","mobileUri":null}],"moduleId":2101,"title":"Tài khoản"},{"contains":[{"moduleId":"210215","displayName":"Demo","mobileUri":"/api/tempq"},{"moduleId":"210201","displayName":"CK trong hệ thống","mobileUri":"/api/internalTransferCreate"},{"moduleId":"210202","displayName":"Inter_bank_Transfer","mobileUri":"/api/externalTransferCreate"},{"moduleId":"210210","displayName":"Chuyển tiền ngoài hệ thống qua thẻ","mobileUri":"/api/napasTransferCreate"},{"moduleId":"210204","displayName":"Chuyển khoản theo lô","mobileUri":null},{"moduleId":"210203","displayName":"Chuyển khoản định kỳ","mobileUri":null},{"moduleId":"210208","displayName":"Quản lý CK định kỳ","mobileUri":null},{"moduleId":"210206","displayName":"Quản lý CK trực tuyến","mobileUri":"/api/inquiryTransferHistory"},{"moduleId":"210212","displayName":"CMT_Transfer","mobileUri":"/api/identityCardTransferCreate"}],"moduleId":2102,"title":"Chuyển khoản"},{"contains":[{"moduleId":"210405","displayName":"Truy vấn thẻ","mobileUri":"/api/inquiryCreditCard"},{"moduleId":"210402","displayName":"Kích hoạt thẻ","mobileUri":"/api/creditCardCreate"},{"moduleId":"210407","displayName":"Khóa thẻ","mobileUri":null}],"moduleId":2104,"title":"Dịch vụ thẻ"},{"contains":[{"moduleId":"210501","displayName":"Thanh toán hóa đơn","mobileUri":"/api/billPaymentCreate"},{"moduleId":"210502","displayName":"Nạp tiền","mobileUri":"/api/rechargeCreate"},{"moduleId":"210503","displayName":"Thanh toán nhanh","mobileUri":"/api/updateFastPayment"},{"moduleId":"210506","displayName":"Quản lý thanh toán trực tuyến","mobileUri":"/api/inquiryBillPaymentHistory"},{"moduleId":"210507","displayName":"Thanh toán hóa đơn tự động","mobileUri":"/api/autoPaymentCreate"},{"moduleId":"210510","displayName":"QR_PAY","mobileUri":"/api/qrBillPaymentCreate"},{"moduleId":"210508","displayName":"Quản lý thanh toán hóa đơn tự động","mobileUri":"/api/inquiryAutoPayment"},{"moduleId":"210600","displayName":"Buy_Data","mobileUri":null}],"moduleId":2105,"title":"Bill__Payment"},{"contains":[{"moduleId":"210601","displayName":"Mở sổ tiết kiệm trực tuyến","mobileUri":"/api/createOnlineSavingAccount"},{"moduleId":"210602","displayName":"Tất toán sổ tiết kiệm","mobileUri":"/api/settlementSavingOnlineCreate"},{"moduleId":"210607","displayName":"Nhật ký tiết kiệm trực tuyến","mobileUri":"/api/inquiryOnlineSavingHistory"},{"moduleId":"210614","displayName":"Loan_Saving","mobileUri":"/api/loanSavingPledge"}],"moduleId":2106,"title":"Tiết kiệm trực tuyến"},{"contains":[{"moduleId":"210801","displayName":"Wallet_Registration","mobileUri":"/api/inquiryWalletRegistrationCreate"},{"moduleId":"210804","displayName":"Wallet_Recharge_Via","mobileUri":"/api/inquiryWalletRechargeViaCreate"},{"moduleId":"210803","displayName":"Cancel_Wallet","mobileUri":"/api/inquiryWalletCancelCreate"}],"moduleId":2108,"title":"Wallet_Service"},{"contains":[{"moduleId":"220101","displayName":"Thông tin khách hàng","mobileUri":"/api/inquiryUserInfo"},{"moduleId":"220102","displayName":"Hỗ trợ khách hàng","mobileUri":null},{"moduleId":"220107","displayName":"Thông báo từ ngân hàng","mobileUri":null},{"moduleId":"220108","displayName":"Hòm thư nhận","mobileUri":"/api/inquiryEmailList"},{"moduleId":"220111","displayName":"Loan_Interest","mobileUri":"/api/interestLoan"},{"moduleId":"220112","displayName":"Tính lãi tiền gửi","mobileUri":"/api/interestSaving"},{"moduleId":"220115","displayName":"Introduce_Customers","mobileUri":"/api/introduceCustomers"}],"moduleId":2201,"title":"Dịch vụ khách hàng"},{"contains":[{"moduleId":"220201","displayName":"Thay đổi mật khẩu","mobileUri":"/api/changePassword"},{"moduleId":"220202","displayName":"Tạm dừng dịch vụ","mobileUri":"/api/suppendUser"},{"moduleId":"220205","displayName":"Lịch sử hoạt động","mobileUri":"/api/operationLog"}],"moduleId":2202,"title":"Bảo mật"},{"contains":[{"moduleId":"210901","displayName":"Point_Gain_History","mobileUri":null},{"moduleId":"210902","displayName":"Exchange_Gifts","mobileUri":null},{"moduleId":"210903","displayName":"History_Exchange_Gifts","mobileUri":null},{"moduleId":"210904","displayName":"Donate_Gifts_Points","mobileUri":null}],"moduleId":2109,"title":"Point_Management"}]';
    // final menuApi = Utils.convertStringToJson(menu_Api);
    var menuLocal;
    try {
      menuLocal = await ApiDio.loadAsset('assets/json/menu/menu.json');
    } catch (e) {
      Toast.showLongTop(e.message);
    }

    final menuApi = Utils.convertStringToJson(data.menuList);

    // print(menuApi);
    // ignore : inference_failure_on_collection_literal
    final menuResponse = [];
    // ignore: inference_failure_on_collection_literal
    final containsMenuApi = [];
    // ignore: inference_failure_on_collection_literal
    var containsMenu = [];

    // ignore: inference_failure_on_untyped_parameter
    menuApi.forEach((value) {
      // ignore: inference_failure_on_untyped_parameter
      value['contains'].forEach((contains) => containsMenuApi.add(contains));
    });

    // đầu tiền phải add nhưng chức năng tự tạo
    menuLocal.forEach((value) {
      if (value['moduleId'] == Constants.MODULE_ID_HOME ||
          value['moduleId'] == Constants.MODULE_ID_GENERAL ||
          value['moduleId'] == Constants.MODULE_ID_SETTING ||
          value['moduleId'] == Constants.MODULE_ID_SMARTOTP ||
          value['moduleId'] == Constants.MODULE_ID_LOGOUT) {
        value['contains'].forEach((value2) {
          checkShowModuleFirstLogin(value, value2);
        });
        menuResponse.add(value);

      } else if(value['moduleId'] == Constants.MODULE_ID_EXTENSION){
        containsMenuApi.forEach((element) {
          if(element['moduleId'] == "210501" && value['moduleId'] == Constants.MODULE_ID_EXTENSION){
            value['contains'].forEach((value2) {
              checkShowModuleFirstLogin(value, value2);
            });
            menuResponse.add(value);
            print("Có tồn tại nè");
          }
        });
      } else {
        containsMenu = [];
        // ignore: inference_failure_on_untyped_parameter
        value['contains'].forEach((value2) {
          // tìm kiếm xem trong danh sách ở api trả về có modlue đó không

          bool exists =
              containsMenuApi.any((e) => e['moduleId'] == value2['moduleId']);

          // nếu mà tồn tại thì add constant
          if (exists) {
            checkShowModuleFirstLogin(value, value2);
          final containApi =  containsMenuApi.firstWhere((e) => e['moduleId'] == value2['moduleId']);
          value2['enableCot'] = containApi['enableCot'];
          value2['enableTrans'] = containApi['enableTrans'];
            containsMenu.add(value2);
          }
        });

        if (containsMenu.isNotEmpty) {
          value['contains'] = containsMenu;
          menuResponse.add(value);
        }
      }
    });
    
    dynamic responses = menuResponse.map((j) => MenuModel.fromMap(j)).toList();
    print(responses);
    List<MenuModel> menuSharePrefer = await SharePreferUtils.getMenuHome();

    /// Mới check TH đăng nhập lần đầu, chưa check TH đăng nhập TK khác
    if (menuSharePrefer == null) {
      await SharePreferUtils.saveMenuHome(responses);
    } else {
      /// Đếm số lượng item ở server trả về
      int countResponses=0;
      responses.forEach((element) {
        element.contains.forEach((contain) {
          countResponses++;
        });
      });
      /// Đếm số lượng item local đã lưu
      int countMenuSharePrefer=0;
      menuSharePrefer.forEach((element) {
        element.contains.forEach((contain) {
          countMenuSharePrefer++;
        });
      });
      /// Check số lượng 2 khác nhau tức là local và server đã thay đổi cần thiết lập lại
      if(countResponses==countMenuSharePrefer){
        /// CHeck tiếp số lượng bằng nhau nhưng cái giá trị bên trong thay đổi thì cũng thiết lập lại
        int checkTotal = 0;
        menuSharePrefer.forEach((element) {
          element.contains.forEach((contain) {
            int check=-1;
            responses.forEach((element1) {
              int index = element1.contains.indexWhere((element2) => element2.moduleId==contain.moduleId && element2.enableCot==contain.enableCot && element2.enableTrans==contain.enableTrans);
              if(index!=-1){
                check=index;
              }
            });
            if(check==-1){
              checkTotal=-1;
            }
          });
        });
        if(checkTotal==-1){
          await SharePreferUtils.saveMenuHome(responses);
        }else{
          responses = menuSharePrefer;
        }
      }else{
        await SharePreferUtils.saveMenuHome(responses);
      }
    }
    return responses;
  }

  // ignore: inference_failure_on_function_return_type
  // changeLang(BuildContext context, String lang) {
  //   if (lang == Constants.VI) {
  //     Provider.of<AppNotifier>(context, listen: false)
  //         .setLocal(const Locale('vi', 'VN'));
  //   } else {
  //     Provider.of<AppNotifier>(context, listen: false)
  //         .setLocal(const Locale('en', 'US'));
  //   }
  // }

  /// Check để chỉ hiện cac module ban đầu vs lần đầu đăng nhập
  void checkShowModuleFirstLogin(value, value2) {
    switch (value['moduleId']) {
      case 1001:
      case 2102:
      case 2105:
      case 2106:
      case 2111:
        /// Thêm module dịch vụ chứng khoán
      case 2113:
      case 10008:
        value2['isShow'] = true;
        break;
      default:
        value2['isShow'] = false;
    }
  }

  @override
  lookSmartOtp(BuildContext context, body) async {
    try {
      final res = await ApiDio.getInstance().createPost(
        SERVER_BASE + UrlStatic.CHECK_LOOK_SMART_OTP,
        context: context,
        body: body,
        showLoading: true
      );
      if (res != null) {
        return res;
      }
    } catch (e) {
      print(e);
    }
  }

  alertLookCountPin(BuildContext context, time, bool exitApp) {
    var mes = Public().languageCustom("smart_otp.LOCK_SMART_OTP") +
        time.toString() +
        Public().languageCustom("smart_otp.MINTER") +
        Public().languageCustom("smart_otp.AFTER_LOCK_SMART_OTP");
    if (time == Constants.TIMELOCK_FOREVER) {
      mes = Public().languageCustom("smart_otp.ACTIVE_SMART_OTP_LOGIN_LOCK");
      // goij den ham xoa smart otp
      ManagerSmartOtpNotifier().deleteSmartOTP(context);
    }
    dialogAlertLock(context, mes, exitApp);
  }

  // show popup chuyền messege  // call api check look smart otp
  dialogAlertLock(BuildContext context, String content, bool exitApp) {
    // ignore: inference_failure_on_function_return_type
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: DialogOneButtonCustom(
              title: "common.info",
              contextDialog: context,
              content: content,
              onClickSubmit: () async {
                if (exitApp) {
                  SystemNavigator.pop();
                } else {
                  NavigatesApp.pop(context);
                  GlobalUtils.LogOut();
                  //  đồng ý thoát app xóa các trang cũ đi
                 NavigatesApp.pushNamed(context, LoginScreen.routeName);
                
                }
              },
            ),
          );
        });
  }
}
