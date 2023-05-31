
import 'package:flutter/material.dart';

import '../../core/data_local/share_prefer_utils.dart';
import '../../main.dart';
import '../../core/screen_root.dart';
import '../login/login_service.dart';

class TermOfUseNotifier extends ChangeNotifier {
  bool _isAgreeRule = false;
  bool _haveError = false;
  final _loginService = LoginService();


  TermOfUseNotifier();

  bool get isAgreeRule => _isAgreeRule;

  setIsAgreeRule() {
    _isAgreeRule = !_isAgreeRule;
    _haveError = false;
    notifyListeners();
  }

  bool get haveError => _haveError;

  Future<void> onClickAgree(BuildContext context) async {
    if (!_isAgreeRule) {
      _haveError = true;
      notifyListeners();
      return;
    }
    await SharePreferUtils.setCompleteSplash();
    initScreen = 1;
    Navigator.pushReplacement(context, MaterialPageRoute<ScreenRootPage>(
      builder: (BuildContext context) {
        return ScreenRootPage();
      },
    ));
  }

  get loginService => _loginService;
}
