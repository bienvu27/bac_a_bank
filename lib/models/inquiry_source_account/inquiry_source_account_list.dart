import 'dart:convert';

// model api truy vấn danh sách tài khoản
class InquirySourceAccountListModel {
  String? message;
  List<ListObjectSourceAccountAll>? object;
  String? responseCode;

  InquirySourceAccountListModel();

  InquirySourceAccountListModel.create(
      {this.message, this.object, this.responseCode});

  Map<String, dynamic> toMap() {
    return {
      'object': object?.map((x) => x.toMap()).toList(),
      'message': message,
      'responseCode': responseCode,
    };
  }

  factory InquirySourceAccountListModel.fromMap(Map<String, dynamic> map) {
    // if (map.isNotEmpty) return null;
    return InquirySourceAccountListModel.create(
      object: List<ListObjectSourceAccountAll>.from(map['object']?.map((x) =>
          (json.decode(map['contains']) as List)
              .map((model) => ListObjectSourceAccountAll.fromMap(model))
              .toList())),
      message: map['message'],
      responseCode: map['reponseCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory InquirySourceAccountListModel.fromJson(String source) =>
      InquirySourceAccountListModel.fromMap(json.decode(source));
}

class ListObjectSourceAccountAll {
  List<AccountAll>? listContains;
  String? title;

  setTitle(String title) {
    title = title;
  }

  ListObjectSourceAccountAll();

  ListObjectSourceAccountAll.create({this.listContains, this.title});

  Map<String, dynamic> toMap() {
    return {
      'contains': listContains?.map((x) => x.toMap()).toList(),
      'title': title,
    };
  }

  factory ListObjectSourceAccountAll.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;
    return ListObjectSourceAccountAll.create(
      listContains: List<AccountAll>.from(
          map['contains']?.map((x) => AccountAll.fromMap(x))),
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ListObjectSourceAccountAll.fromJson(String source) =>
      ListObjectSourceAccountAll.fromMap(json.decode(source));

      
}

class AccountAll {
  String? acctNo;
  String? acctName;
  String? bankNo;
  String? orgNo;
  String? branchNo;
  String? subBranchNo;
  String? acctType;
  String? currencyCode;
  double? availableBalance;
  double? currentBalance;
  String? status;
  String? cifNo;
  String? termInString;
  String? teamInStringCode;
  String? termCode;
  int? accuredInterest;
  String? originalBalance;
  int? interestRate;
  int? dateAccountOpened;
  String? maturityDate;
  String? nextInterestPaymentAmount;
  String? nextInterestPaymentDate;
  String? nextOriginalPaymentAmount;
  String? nextOriginalPaymentDate;
  String? purposeCode;
  String? enableTrans;
  String? amountMoney;
  AccountAll({
    this.acctNo,
    this.acctName,
    this.bankNo,
    this.orgNo,
    this.branchNo,
    this.subBranchNo,
    this.acctType,
    this.amountMoney,
    this.currencyCode,
    this.availableBalance,
    this.currentBalance,
    this.status,
    this.cifNo,
    this.termInString,
    this.teamInStringCode,
    this.termCode,
    this.accuredInterest,
    this.originalBalance,
    this.interestRate,
    this.dateAccountOpened,
    this.maturityDate,
    this.nextInterestPaymentAmount,
    this.nextInterestPaymentDate,
    this.nextOriginalPaymentAmount,
    this.nextOriginalPaymentDate,
    this.purposeCode,
    this.enableTrans,
  });
  AccountAll.create({
    this.acctNo,
    this.acctName,
    this.bankNo,
    this.orgNo,
    this.branchNo,
    this.subBranchNo,
    this.acctType,
    this.currencyCode,
    this.availableBalance,
    this.currentBalance,
    this.status,
    this.cifNo,
    this.termInString,
    this.teamInStringCode,
    this.termCode,
    this.accuredInterest,
    this.originalBalance,
    this.interestRate,
    this.dateAccountOpened,
    this.maturityDate,
    this.nextInterestPaymentAmount,
    this.nextInterestPaymentDate,
    this.nextOriginalPaymentAmount,
    this.nextOriginalPaymentDate,
    this.purposeCode,
    this.enableTrans,
  });

  Map<String, dynamic> toMap() {
    return {
      'acctNo': acctNo,
      'acctName': acctName,
      'bankNo': bankNo,
      'orgNo': orgNo,
      'branchNo': branchNo,
      'subBranchNo': subBranchNo,
      'acctType': acctType,
      'currencyCode': currencyCode,
      'availableBalance': availableBalance,
      'currentBalance': currentBalance,
      'status': status,
      'cifNo': cifNo,
      'termInString': termInString,
      'teamInStringCode': teamInStringCode,
      'termCode': termCode,
      'accuredInterest': accuredInterest,
      'originalBalance': originalBalance,
      'interestRate': interestRate,
      'dateAccountOpened': dateAccountOpened,
      'maturityDate': maturityDate,
      'nextInterestPaymentAmount': nextInterestPaymentAmount,
      'nextInterestPaymentDate': nextInterestPaymentDate,
      'purposeCode': purposeCode,
      'enableTrans': enableTrans,
    };
  }

  factory AccountAll.fromMap(Map<String, dynamic> json) {
    // if (json == null) return null;
    double? availableBalance;
    if (json['availableBalance'] != null) {
      availableBalance = double.parse(json['availableBalance'].toString());
    }
    double? currentBalance;
    if (json['currentBalance'] != null) {
      currentBalance = double.parse(json['currentBalance'].toString());
    }
    return AccountAll.create(
      acctNo: json['acctNo'],
      acctName: json['acctName'],
      bankNo: json['bankNo'],
      orgNo: json['orgNo'],
      branchNo: json['branchNo'],
      subBranchNo: json['subBranchNo'],
      acctType: json['acctType'],
      currencyCode: json['currencyCode'],
      availableBalance: availableBalance,
      currentBalance: currentBalance,
      status: json['status'],
      cifNo: json['cifNo'],
      termInString: json['termInString'],
      teamInStringCode: json['teamInStringCode'],
      termCode: json['termCode'],
      accuredInterest: json['accuredInterest'],
      originalBalance: json['originalBalance'],
      interestRate: json['interestRate'],
      dateAccountOpened: json['dateAccountOpened'],
      maturityDate: json['maturityDate'],
      nextInterestPaymentAmount: json['nextInterestPaymentAmount'],
      nextInterestPaymentDate: json['nextInterestPaymentDate'],
      purposeCode: json['purposeCode'],
      enableTrans: json['enableTrans'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountAll.fromJson(String source) =>
      AccountAll.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AccountAll{acctNo: $acctNo, acctName: $acctName, bankNo: $bankNo, orgNo: $orgNo, branchNo: $branchNo, subBranchNo: $subBranchNo, acctType: $acctType, currencyCode: $currencyCode, availableBalance: $availableBalance, currentBalance: $currentBalance, status: $status, cifNo: $cifNo, termInString: $termInString, teamInStringCode: $teamInStringCode, termCode: $termCode, accuredInterest: $accuredInterest, originalBalance: $originalBalance, interestRate: $interestRate, dateAccountOpened: $dateAccountOpened, maturityDate: $maturityDate, nextInterestPaymentAmount: $nextInterestPaymentAmount, nextInterestPaymentDate: $nextInterestPaymentDate, nextOriginalPaymentAmount: $nextOriginalPaymentAmount, nextOriginalPaymentDate: $nextOriginalPaymentDate, purposeCode: $purposeCode, enableTrans: $enableTrans, amountMoney: $amountMoney}';
  }
}
