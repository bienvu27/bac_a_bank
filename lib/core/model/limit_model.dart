import 'dart:convert';

class LimitInDayRequestModel {
  String _moduleId;
  String _serviceType;
  LimitInDayRequestModel(
    this._moduleId,
    this._serviceType,
  );

  String get serviceType => _serviceType;

  set serviceType(String serviceType) {
    _serviceType = serviceType;
  }

  String get moduleId => _moduleId;

  set moduleId(String moduleId) {
    _moduleId = moduleId;
  }

  Map<String, dynamic> toMap() {
    return {
      'moduleId': _moduleId,
      'serviceType': _serviceType,
    };
  }
}

class LimitInDayResponceModel {
  final dynamic dayLeftAmount;
  final dynamic transLeftAmount;
  final dynamic limitMinAmount;
  final dynamic minAmount;

  LimitInDayResponceModel([this.dayLeftAmount, this.transLeftAmount,this.limitMinAmount,this.minAmount]);

  Map<String, dynamic> toMap() {
    return {
      'dayLeftAmount': dayLeftAmount,
      'transLeftAmount': transLeftAmount,
      'limitMinAmount': limitMinAmount,
      'minAmount':minAmount
    };
  }

  factory LimitInDayResponceModel.fromMap(Map<String, dynamic> map) {
    // if (map == null) return null;

    return LimitInDayResponceModel(
      map['dayLeftAmount'] ?? 0,
      map['transLeftAmount'] ?? 0,
      map['limitMinAmount'] ?? 0,
      map['minAmount']??0
    );
  }

  String toJson() => json.encode(toMap());

  factory LimitInDayResponceModel.fromJson(String source) =>
      LimitInDayResponceModel.fromMap(json.decode(source));
}
