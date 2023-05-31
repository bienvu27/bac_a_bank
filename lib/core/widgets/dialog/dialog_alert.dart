import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../styles/style.dart';
import 'dialog_custom.dart';

class DialogAlert {

  static void showDialogAlertCancel(BuildContext context, String content,
      {translate = true, popRoot = false, Function? btnOk}) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return DialogWidgetOneButtonCustom(
              title: 'fingerprint.notif',
              contextDialog: context,
              childWidget: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width_16, vertical: height_16),
                    child: Center(
                      child: translate == false
                          ? Text(content, textAlign: TextAlign.center)
                          : Text(
                        content.tr(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: fontSize_10),
                      ),
                    ),
                  ),
                ],
              ),
              onClickSubmit: btnOk);
        });
  }



  static showMLoadding(BuildContext context) {
    // ignore: inference_failure_on_function_return_type
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return DialogNoContentCustom(
            childWidget: Padding(
              padding: EdgeInsets.symmetric(vertical: height_24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  // ignore: inference_failure_on_function_return_type
                  Text('common.loading'.tr())
                ],
              ),
            ),
          );
        });
  }
}