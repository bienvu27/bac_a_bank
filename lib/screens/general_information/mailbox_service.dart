import 'package:bac_a_bank/screens/general_information/mailbox_model1.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/root_api.dart';
import '../../core/base_service/api_dio.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/status.dart';
import '../../core/constants/url_static.dart';
import '../../core/data_local/share_prefer_utils.dart';
import '../../core/model/base_response_model.dart';
import '../../core/ulitis/utils.dart';
import '../login/login_model.dart';
import 'mailbox_interface.dart';

class MailboxService extends IMailboxInterface {
  @override
  Future<List<MailboxModel1>> getListCommonMailbox(BuildContext context) async {
    List<MailboxModel1> listServiceModel = [];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String,dynamic> body ={};
    if(prefs.containsKey(Constants.USER_INFO)){
      LoginResponse? loginResponse = await SharePreferUtils.getUserInfo();
      body['userId'] = loginResponse?.userId;
    }
    try {
      final res = await ApiDio.getInstance()?.createPost(
        SERVER_BASE + UrlStatic.URI_GET_COMMON_MAILBOX,
        context: context,
        body: body,
      );
      BaseResponseModel _resModel = BaseResponseModel.fromMap(res);
      if(_resModel.responseCode == StatusApi.GET_COMMON_MAILBOX_SUCCESS) {
        final objectConverted = Utils.convertStringToJson("${_resModel.object}");
        listServiceModel = List<MailboxModel1>.from(objectConverted["contains"].map((x) => MailboxModel1.fromJson(x)));
      }
    } catch(e) {
      print(e);
    }
    return listServiceModel;
  }

  @override
  Future<List<MailboxModel1>> getListPrivateMailbox(BuildContext context) {
    // TODO: implement getListPrivateMailbox
    throw UnimplementedError();
  }

  @override
  Future<void> viewDetail(String idMessage, int type, BuildContext context) {
    // TODO: implement viewDetail
    throw UnimplementedError();
  }
}
