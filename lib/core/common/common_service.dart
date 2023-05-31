import 'package:bac_a_bank/core/model/limit_model.dart';

import 'package:bac_a_bank/models/inquiry_source_account/inquiry_source_account_list.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'conmon_interface.dart';

class CommonService implements ICommonInterface {
  @override
  Future<String> getBalanceAccount(BuildContext context, String account) {
    // TODO: implement getBalanceAccount
    throw UnimplementedError();
  }

  @override
  inquiryBenefAccountName(BuildContext context, String body) {
    // TODO: implement inquiryBenefAccountName
    throw UnimplementedError();
  }

  @override
  inquiryNapasBankList(BuildContext context) {
    // TODO: implement inquiryNapasBankList
    throw UnimplementedError();
  }

  @override
  Future<List<ListObjectSourceAccountAll>> inquirySourceAccountList(BuildContext context) {
    // TODO: implement inquirySourceAccountList
    throw UnimplementedError();
  }

  @override
  Future<LimitInDayResponceModel> inquiryTransLimit(body, BuildContext context) {
    // TODO: implement inquiryTransLimit
    throw UnimplementedError();
  }

}