import 'package:flutter/material.dart';
import 'login_model.dart';

// ignore: prefer_mixin, one_member_abstracts
abstract class ILoginInterface {
  Future<void> login(LoginRequest request, BuildContext context);

 getAdvertise(BuildContext context);

 lookSmartOtp(BuildContext context, dynamic body);
}
