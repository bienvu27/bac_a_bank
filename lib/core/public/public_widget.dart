import 'package:easy_localization/easy_localization.dart';

class Public {
  String languageCustom(String? translate,) {
    try{
      if (translate != null) {
        return translate.tr();
      } else {
        return 'key isEmtype';
      }
    }catch(e){
      return "";
    }
  }
}