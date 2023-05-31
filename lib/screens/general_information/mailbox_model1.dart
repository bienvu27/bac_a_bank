class MailboxModel1 {
    MailboxModel1({
        this.messageId,
        this.sysCode,
        this.userId,
        this.userName,
        this.commmChanel,
        this.mobile,
        this.email,
        this.content,
        this.status,
        this.operateTime,
        this.channelCode,
        this.title,
        this.userGroup,
        this.tcCode,
        this.tcRuntime,
        this.isRead,
        this.type,
    });

    String? messageId;
    dynamic sysCode;
    dynamic userId;
    dynamic userName;
    dynamic commmChanel;
    dynamic mobile;
    dynamic email;
    String? content;
    dynamic status;
    String? operateTime;
    dynamic channelCode;
    String? title;
    dynamic userGroup;
    dynamic tcCode;
    dynamic tcRuntime;
    String? isRead;
    String? type;

    factory MailboxModel1.fromJson(Map<String, dynamic> json) => MailboxModel1(
        messageId: json["messageId"],
        sysCode: json["sysCode"],
        userId: json["userId"],
        userName: json["userName"],
        commmChanel: json["commmChanel"],
        mobile: json["mobile"],
        email: json["email"],
        content: json["content"],
        status: json["status"],
        operateTime: json["operateTime"],
        channelCode: json["channelCode"],
        title: json["title"],
        userGroup: json["userGroup"],
        tcCode: json["tcCode"],
        tcRuntime: json["tcRuntime"],
        isRead: json["isRead"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "messageId": messageId,
        "sysCode": sysCode,
        "userId": userId,
        "userName": userName,
        "commmChanel": commmChanel,
        "mobile": mobile,
        "email": email,
        "content": content,
        "status": status,
        "operateTime": operateTime,
        "channelCode": channelCode,
        "title": title,
        "userGroup": userGroup,
        "tcCode": tcCode,
        "tcRuntime": tcRuntime,
        "isRead": isRead,
        "type": type,
    };
}