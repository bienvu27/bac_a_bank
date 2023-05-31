import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../menu/menu_notifier.dart';

class LoginNotifier with ChangeNotifier {
  MenuNotifier? notifier;
  int countNotification = 0;

  Future<void> getCountNotification(BuildContext context) async {
    notifier = Provider.of<MenuNotifier>(context, listen: false);
    await notifier?.getListCommonMailbox(context);
    countNotification = notifier!.numberOfEmailStream;
    notifyListeners();
  }
}
