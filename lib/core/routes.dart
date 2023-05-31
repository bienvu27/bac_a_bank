import 'package:bac_a_bank/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
    return null;
  }
}