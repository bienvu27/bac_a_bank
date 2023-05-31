import 'base_service.dart';

class ApiDio {
  static ApiDio? instance;
  static BaseServices? baseService;

  static BaseServices? getInstance() {
    instance ??= ApiDio();
    return _getBaseService();
  }

  static BaseServices? _getBaseService() {
    return baseService;
  }
}
