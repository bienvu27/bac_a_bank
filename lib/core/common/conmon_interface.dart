import '../../models/inquiry_source_account/inquiry_source_account_list.dart';
import 'package:flutter/cupertino.dart';

import '../model/limit_model.dart';

// ignore: prefer_mixin, one_member_abstracts
abstract class ICommonInterface {
  Future<List<ListObjectSourceAccountAll>> inquirySourceAccountList(BuildContext context);

// lấy số dư tài khoản
  Future<String> getBalanceAccount(BuildContext context, String account);

  // gọi limit chuyển tiền
  Future<LimitInDayResponceModel> inquiryTransLimit(body,BuildContext context);

  inquiryBenefAccountName(BuildContext context, String body);



  inquiryNapasBankList(BuildContext context);
}
