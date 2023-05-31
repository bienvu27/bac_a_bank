import 'package:flutter/material.dart';

import '../../core/data_local/share_prefer_utils.dart';
import '../general_information/mailbox_service.dart';
import 'menu_model.dart';

class MenuNotifier with ChangeNotifier {
  List<MenuModel>? _listmenu= [];
  int _numberOfEmailSubject = 0;
  int get numberOfEmailStream => _numberOfEmailSubject;
  final MailboxService _service = MailboxService();
  // ignore: inference_failure_on_function_return_type
  setListMenu(List<MenuModel>? listmenu) {
    _listmenu = listmenu;
    notifyListeners();
  }

   getListCommonMailbox(BuildContext context) async {
    final _listCommonMailbox= await _service.getListCommonMailbox(context);
    List<String> idMailDelete = await SharePreferUtils.getEmailDelete();
    idMailDelete.forEach((idDelete) {
      print(idDelete);
      _listCommonMailbox.removeWhere((element) => element.messageId.toString()==idDelete);
    });
    _numberOfEmailSubject=0;
    _listCommonMailbox.forEach((element) {
      if(element.isRead=="N"){
        _numberOfEmailSubject++;
      }
    });
    notifyListeners();
  }
}