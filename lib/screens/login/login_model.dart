import 'dart:convert';

import '../../core/constants/constants.dart';
import '../../core/public/global_utils.dart';

class LoginRequest {
  String? requestId;
  String? username;
  String? password;
  String? passwordUpperCase;
  String? lang;
  String? otpNo;
  String? version;
  String? noti_token;
  String? is_reset_finger;
  String? isNotification;
  String? platform;
  String? serialNo;
  String? token;
  String? deviceId;
  String? tranSn;

  LoginRequest(
      {this.requestId,
      this.username,
      this.password,
      this.passwordUpperCase,
      this.lang,
      this.otpNo,
      this.version,
      this.noti_token,
      this.is_reset_finger,
      this.isNotification,
      this.platform,
      this.serialNo,
      this.token,
      this.tranSn,
      this.deviceId}) {
    this.lang = GlobalUtils.LANGUAGE;
    this.version = Constants.VERSION_APP;
    this.noti_token =  GlobalUtils.NOTI_TOKEN;
  }

  String? get getRequestId => requestId;

  set setRequestId(String requestId) => this.requestId = requestId;

  String? get getUsername => username;

  set setUsername(String username) => this.username = username;

  String? get getPassword => password;

  set setPassword(String password) => this.password = password;

  String? get getLang => lang;

  set setLang(String lang) => this.lang = lang;

  String? get getOtpNo => otpNo;

  set setOtpNo(String otpNo) => this.otpNo = otpNo;

  String? get getVersion => version;

  set setVersion(String version) => this.version = version;

  String? get getNotiToken => noti_token;

  set setNotiToken(String noti_token) => this.noti_token = noti_token;

  String get isreset_finger => is_reset_finger!;

  set isreset_finger(String value) => is_reset_finger = value;

  String? get getIsNotification => isNotification;

  set setIsNotification(String isNotification) =>
      this.isNotification = isNotification;

  String? get getPlatform => platform;

  set setPlatform(String platform) => this.platform = platform;

  String? get getSerialNo => serialNo;

  set setSerialNo(String serialNo) => this.serialNo = serialNo;

  String? get getToken => token;

  set setToken(String token) => this.token = token;



  Map<String, dynamic> toMap() {
    return {
      'requestId': requestId ?? "",
      'username': username ?? "",
      'password': password ?? "",
      'passwordUpperCase': passwordUpperCase ?? "",
      'lang': lang ?? "",
      'otpNo': otpNo ?? "",
      'version': version ?? "",
      'is_reset_finger': is_reset_finger ?? "",
      'isNotification': isNotification ?? "",
      'platform': platform ?? "",
      'serialNo': serialNo??'' ,
      'token': token ?? "",
      'deviceId': deviceId,
      'tranSn': tranSn
    };
  }

  factory LoginRequest.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;

    return LoginRequest(
      requestId: map['requestId'],
      username: map['username'],
      password: map['password'],
      passwordUpperCase: map['passwordUpperCase'],
      lang: map['lang'],
      otpNo: map['otpNo'],
      version: map['version'],
      is_reset_finger: map['is_reset_finger'],
      isNotification: map['isNotification'],
      platform: map['platform'],
      serialNo: map['serialNo'],
      token: map['token'],
      tranSn: map['tranSn'],
      deviceId: map['deviceId']
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginRequest.fromJson(String source) =>
      LoginRequest.fromMap(json.decode(source));
}

class LoginResponse {
  String? ccyFormat;
  String? fullName;
  String? isFingerLogin;
  String? is_Noti;
  String? isDebtNoti;
  String? lastLoginTime;
  String? menuList;
  String? message;
  String? responseCode;
  String? ruleMessage;
  String? rulePass;
  String? serialNo;
  String? timeOut;
  String? token;
  String? userId;
  String? versionAppMobile;
  String? userName;
  String? email;
  String? phoneNumber;
  String? cifNumber;
  String? branchId;
  String? securityType;
  String? isLogNoti;
  String? messageNotification;

  // ignore: sort_constructors_first
  LoginResponse(
      {this.ccyFormat,
      this.fullName,
      this.isFingerLogin,
      this.is_Noti,
      this.isDebtNoti,
      this.lastLoginTime,
      this.menuList,
      this.message,
      this.userName,
      this.email,
      this.phoneNumber,
      this.responseCode,
      this.ruleMessage,
      this.rulePass,
      this.serialNo,
      this.timeOut,
      this.token,
      this.userId,
      this.isLogNoti,
      this.messageNotification,
      this.versionAppMobile, this.cifNumber,this.branchId, this.securityType});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    // if (json == null) return null;
    return LoginResponse(
      ccyFormat: json['ccyFormat'],
      fullName: json['fullName'],
      isFingerLogin: json['isFingerLogin'],
      is_Noti: json['is_Noti'].toString(),
      isDebtNoti: json['isDebtNoti'].toString(),
      lastLoginTime: json['lastLoginTime'],
      menuList: json['menuList'],
      message: json['message'],
      responseCode: json['responseCode'],
      ruleMessage: json['ruleMessage'],
      rulePass: json['rulePass'],
      serialNo: json['serialNo'],
      timeOut: json['timeOut'],
      userName: json['userName'].toString(),
      email: json['email'].toString(),
      phoneNumber: json['phoneNumber'].toString(),
      token: json['token'],
      userId: json['userId'],
      versionAppMobile: json['versionAppMobile'],
      cifNumber: json['cifNumber'],
      isLogNoti: json['isLogNoti'].toString(),
      messageNotification: json['messageNotification'].toString(),
      branchId:json['branchId'],
       securityType:json['securityType']
      
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'ccyFormat': ccyFormat,
      'fullName': fullName,
      'isFingerLogin': isFingerLogin,
      'is_Noti': is_Noti,
      'isDebtNoti': isDebtNoti,
      'lastLoginTime': lastLoginTime,
      'menuList': menuList,
      'message': message,
      'responseCode': responseCode,
      'ruleMessage': ruleMessage,
      'rulePass': rulePass,
      'serialNo': serialNo,
      'timeOut': timeOut,
      'token': token,
      'userId': userId,
      'versionAppMobile': versionAppMobile,
      'userName': userName,
      'email': email,
      'phoneNumber': phoneNumber,
      'cifNumber': cifNumber,
      'branchId':branchId,
      'isLogNoti':isLogNoti,
      'messageNotification': messageNotification,
       'securityType':securityType
    };
  }

  @override
  String toString() {
    return 'LoginResponse{ccyFormat: $ccyFormat, fullName: $fullName, isFingerLogin: $isFingerLogin, is_Noti: $is_Noti, isDebtNoti: $isDebtNoti, lastLoginTime: $lastLoginTime, menuList: $menuList, message: $message, responseCode: $responseCode, ruleMessage: $ruleMessage, rulePass: $rulePass, serialNo: $serialNo, timeOut: $timeOut, token: $token, userId: $userId, versionAppMobile: $versionAppMobile, userName: $userName, email: $email, phoneNumber: $phoneNumber, cifNumber: $cifNumber, branchId: $branchId, securityType: $securityType}';
  }
}

class DetailAccountType {
  String? acctNo;
  String? acctName;
  String? acctType;
  String? currencyCode;
  int? availableBalance;
  int? currentBalance;
  String? status;
  String? cifNo;

  DetailAccountType({
    this.acctNo,
    this.acctName,
    this.acctType,
    this.currencyCode,
    this.availableBalance,
    this.currentBalance,
    this.status,
    this.cifNo,
  });

  Map<String, dynamic> toMap() {
    return {
      'acctNo': acctNo,
      'acctName': acctName,
      'acctType': acctType,
      'currencyCode': currencyCode,
      'availableBalance': availableBalance,
      'currentBalance': currentBalance,
      'status': status,
      'cifNo': cifNo,
    };
  }

  factory DetailAccountType.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;

    return DetailAccountType(
      acctNo: map['acctNo'],
      acctName: map['acctName'],
      acctType: map['acctType'],
      currencyCode: map['currencyCode'],
      availableBalance: map['availableBalance'],
      currentBalance: map['currentBalance'],
      status: map['status'],
      cifNo: map['cifNo'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailAccountType.fromJson(String source) =>
      DetailAccountType.fromMap(json.decode(source));
}

class ListDetailAccountType {
  List<DetailAccountType>? contains;
  String? title;

  ListDetailAccountType({
    this.contains,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return {
      'contains': contains?.map((x) => x?.toMap())?.toList(),
      'title': title,
    };
  }

  factory ListDetailAccountType.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;

    return ListDetailAccountType(
      contains: List<DetailAccountType>.from(
          map['contains']?.map((x) => DetailAccountType.fromMap(x))),
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ListDetailAccountType.fromJson(String source) =>
      ListDetailAccountType.fromMap(json.decode(source));
}

class ArrayConstant {
  List<ListDetailAccountType>? object;
  String? message;
  String? reponseCode;

  ArrayConstant({
    this.object,
    this.message,
    this.reponseCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'object': object?.map((x) => x?.toMap())?.toList(),
      'message': message,
      'reponseCode': reponseCode,
    };
  }

  factory ArrayConstant.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;
    List<ListDetailAccountType> modelData =
        (json.decode(map['contains']) as List)
            .map((model) => ListDetailAccountType.fromMap(model))
            .toList();

    return ArrayConstant(
      object: List<ListDetailAccountType>.from(map['object']?.map((x) =>
          (json.decode(map['contains']) as List)
              .map((model) => ListDetailAccountType.fromMap(model))
              .toList())),
      message: map['message'],
      reponseCode: map['reponseCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ArrayConstant.fromJson(String source) =>
      ArrayConstant.fromMap(json.decode(source));
}

class CheckResponseCodeModel {
  String? message;
  String? responseCode;

  CheckResponseCodeModel();

  CheckResponseCodeModel.create({
    this.message,
    this.responseCode,
  });

  factory CheckResponseCodeModel.fromJson(Map<String, dynamic> data) {
    return CheckResponseCodeModel.create(
      message: data['message'],
      responseCode: data['responseCode'],
    );
  }
}

class CurrencyModel {
  String? currencyCode;
  String? numberFormat;

  CurrencyModel();

  CurrencyModel.create({this.currencyCode, this.numberFormat});

  factory CurrencyModel.fromJson(Map<String, dynamic> data) {
    return CurrencyModel.create(
        currencyCode: data["currencyCode"], numberFormat: data["numberFormat"]);
  }
}

class AdvertiseModel {
    AdvertiseModel({
        this.fileId,
        this.folderId,
        this.seqNo,
        this.content,
        this.extUrl,
        this.channelCode,
        this.title,
        this.subTitle,
        this.attachmentPath,
        this.attachmentContent,
        this.fileName,
    });

    int? fileId;
    int? folderId;
    int? seqNo;
    String? content;
    String? extUrl;
    String? channelCode;
    String? title;
    dynamic subTitle;
    dynamic attachmentPath;
    dynamic attachmentContent;
    dynamic fileName;

    factory AdvertiseModel.fromJson(Map<String, dynamic> json) => AdvertiseModel(
        fileId: json["fileId"],
        folderId: json["folderId"],
        seqNo: json["seqNo"],
        content: json["content"],
        extUrl: json["extUrl"],
        channelCode: json["channelCode"],
        title: json["title"],
        subTitle: json["subTitle"],
        attachmentPath: json["attachmentPath"],
        attachmentContent: json["attachmentContent"],
        fileName: json["fileName"],
    );

    Map<String, dynamic> toJson() => {
        "fileId": fileId,
        "folderId": folderId,
        "seqNo": seqNo,
        "content": content,
        "extUrl": extUrl,
        "channelCode": channelCode,
        "title": title,
        "subTitle": subTitle,
        "attachmentPath": attachmentPath,
        "attachmentContent": attachmentContent,
        "fileName": fileName,
    };
}
