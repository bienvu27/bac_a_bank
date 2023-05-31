import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../navigates.dart';
import '../../styles/style.dart';

double widgetBottomHeight = height_32;
/// Dialog 1 button, content là widget
class DialogWidgetOneButtonCustom extends StatelessWidget {
  final String? title;
  final Function? onClickSubmit;
  final String? textSubmit;
  final BuildContext? contextDialog;
  final bool? isTranslateContent;
  final Widget? childWidget;
  final bool? popRoot;

  const DialogWidgetOneButtonCustom(
      {Key? key,
        this.title,
        this.onClickSubmit,
        this.textSubmit,
        this.contextDialog,
        this.isTranslateContent = true,
        this.childWidget,this.popRoot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(border_8),
      ),
      backgroundColor: Colors.white,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: height_16),
            child: Center(
                child: Text(
                  "${title?.tr()}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: fontSize_12,
                      fontWeight: FontWeight.bold),
                )),
          ),
          childWidget ?? const SizedBox(),
          Container(
            height: 2,
            color: Colors.black26,
          ),
          Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: InkWell(
              onTap: () {
                if (onClickSubmit != null) {
                  onClickSubmit!();
                }else{
                  if(popRoot ==true) {
                    NavigatesApp.popRootPushName(context);
                  }else {
                    Navigator.pop(contextDialog!);

                  }
                }
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: width_40),
                  height: widgetBottomHeight,
                  child: Center(
                      child: Text(
                        "${textSubmit != null ? textSubmit?.tr() : "common.ok".tr()}",
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: fontSize_12,
                            fontWeight: FontWeight.bold),
                      ))),
            ),
          )
        ],
      ),
    );
  }
}
/// Dialog không có gì. chỉ có khung. content là widget
class DialogNoContentCustom extends StatelessWidget {
  final Widget? childWidget;

  const DialogNoContentCustom(
      {Key? key,
        this.childWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(border_8),
      ),
      backgroundColor: Colors.white,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: <Widget>[
          childWidget ?? const SizedBox(),
        ],
      ),
    );
  }
}