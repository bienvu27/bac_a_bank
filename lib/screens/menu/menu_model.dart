import 'dart:convert';

class MenuModel {
  MenuModel(
      {this.moduleId,
      this.title,
      this.contains,
      this.url,
      this.icon,
      this.checked = false,
      this.enableCot,
      this.enableTrans});

  final int? moduleId;
  final String? title;
  final List<Contain>? contains;
  final String? url;
  final String? icon;
  final bool? checked;
  final String? enableCot; // module bị chặn do cut off time
  final String? enableTrans; // thông báo rút gốc từng phần Chức năng đang nâng cấp

  factory MenuModel.fromJson(String str) => MenuModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MenuModel.fromMap(Map<String, dynamic> json) => MenuModel(
        moduleId: json["moduleId"],
        title: json["title"],
        contains: json["contains"] == null
            ? null
            : List<Contain>.from(
                json["contains"].map((x) => Contain.fromMap(x))),
        url: json["url"],
        icon: json["icon"],
        enableCot: json["enableCot"],
        enableTrans: json["enableTrans"],
      );

  Map<String, dynamic> toMap() => {
        "moduleId": moduleId,
        "title": title,
        "contains": contains == null
            ? null
            : List<dynamic>.from(contains!.map((x) => x.toMap())),
        "url": url,
        "icon": icon,
        "enableCot": icon == null ? null : enableCot,
        "enableTrans": icon == null ? null : enableTrans,
      };
}

class Contain {
  Contain(
      {this.moduleId,
      this.displayName,
      this.id,
      this.routerName,
      this.icon,
      this.isShow,
      this.enableCot,
      this.enableTrans});

  final String? moduleId;
  final String? displayName;
  final String? id;
  final String? routerName;
  final String? icon;
  bool? isShow; // Cho phép hiển thị hay không.
  final String? enableCot; // module bị chặn do cut off time
  final String? enableTrans; // module rút gốc từng phần đang nâng cấp

  factory Contain.fromJson(String str) => Contain.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Contain.fromMap(Map<String, dynamic> json) {
    return Contain(
      moduleId: json["moduleId"],
      displayName: json["displayName"],
      id: json["id"],
      routerName: json["routerName"],
      icon: json["icon"],
      isShow: json["isShow"],
      enableCot: json["enableCot"],
      enableTrans: json["enableTrans"],
    );
  }

  Map<String, dynamic> toMap() => {
        "moduleId": moduleId,
        "displayName": displayName,
        "id": id,
        "routerName": routerName,
        "icon": icon,
        "isShow": isShow,
        "enableCot": icon == null ? null : enableCot,
        "enableTrans": icon == null ? null : enableTrans,
      };
}
