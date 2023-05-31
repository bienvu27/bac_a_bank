
import 'package:flutter/material.dart';

class BaseResponseModel{
  String? responseCode;
  String? object;
  String? message;
  String? refreshedToken;
  String? securityType;
  String? objectOther;
  dynamic receivePoint;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  BaseResponseModel({
    @required this.responseCode,
    @required this.object,
     this.message,
     this.refreshedToken,
     this.securityType,
     this.objectOther,
     this.receivePoint,
  });

  BaseResponseModel copyWith({
    String? responseCode,
    String? object,
    String? message,
    String? refreshedToken,
    String? securityType,
    String? objectOther,
    dynamic receivePoint,
  }) {
    return new BaseResponseModel(
      responseCode: responseCode ?? this.responseCode,
      object: object ?? this.object,
      message: message ?? this.message,
      refreshedToken: refreshedToken ?? this.refreshedToken,
      securityType: securityType ?? this.securityType,
      objectOther: objectOther ?? this.objectOther,
      receivePoint: receivePoint ?? this.receivePoint,
    );
  }

  @override
  String toString() {
    return 'BaseResponse{responseCode: $responseCode, object: $object, message: $message, refreshedToken: $refreshedToken, securityType: $securityType, objectOther: $objectOther, receivePoint: $receivePoint}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BaseResponseModel &&
          runtimeType == other.runtimeType &&
          responseCode == other.responseCode &&
          object == other.object &&
          message == other.message &&
          refreshedToken == other.refreshedToken &&
          securityType == other.securityType &&
          receivePoint == other.receivePoint &&
          objectOther == other.objectOther);

  @override
  int get hashCode =>
      responseCode.hashCode ^
      object.hashCode ^
      message.hashCode ^
      refreshedToken.hashCode ^
      securityType.hashCode ^
      receivePoint.hashCode ^
      objectOther.hashCode;

  factory BaseResponseModel.fromMap(Map<String, dynamic> map) {
    return new BaseResponseModel(
      responseCode: map['responseCode'].toString(),
      object: map['object'].toString(),
      message: map['message'].toString(),
      refreshedToken: map['refreshedToken'].toString(),
      securityType: map['securityType'].toString(),
      objectOther: map['objectOther'].toString(),
      receivePoint: map['receivePoint'],
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'responseCode': this.responseCode,
      'object': this.object,
      'message': this.message,
      'refreshedToken': this.refreshedToken,
      'securityType': this.securityType,
      'objectOther': this.objectOther,
      'receivePoint': this.receivePoint,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}