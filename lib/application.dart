import 'dart:async';

import 'package:bac_a_bank/core/routes.dart';
import 'package:bac_a_bank/core/screen_root.dart';
import 'package:bac_a_bank/screens/login/login_notifier.dart';
import 'package:bac_a_bank/screens/menu/menu_notifier.dart';
import 'package:bac_a_bank/screens/term_of_use/term_of_use_notifier.dart';
import 'package:bac_a_bank/screens/term_of_use/term_of_use_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:provider/provider.dart';

import 'app_notifier.dart';
import 'core/constants/constants.dart';
import 'core/data_local/share_prefer_utils.dart';
import 'core/public/global_utils.dart';
import 'core/widgets/root_layout.dart';
import 'main.dart';

class Application extends StatefulWidget {
  const Application({Key? key,required this.supportedLocales, this.localizationsDelegates, this.locale}) : super(key: key);

  final Iterable<Locale> supportedLocales;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Locale? locale;

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  Timer _timer = Timer.periodic(Duration.zero, (_) {});
  Key key = UniqueKey();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((event) async {
      String token = await SharePreferUtils.getFCMToken();
      print(token);
    });
  }

  void _initializeTimer() {
    print("start time logout");
    _timer = Timer.periodic(const Duration(milliseconds: Constants.TIME_TO_LOGOUT), (_) {
      _logOutUser();
    });
  }

  Future<void> _logOutUser() async {
    print("logout user");
    try {
      SharePreferUtils.logOutApp();
      // lấy lại trạng thái màn hình điều khoản dịch vụ
      // tránh trường hợp thiết bị tự xóa dữ liệu biến khi quá tải
      initScreen = await SharePreferUtils.getCompleteSplash();
      GlobalUtils.inquirySourceAccountListChild.clear();
      Provider.of<MenuNotifier>(context, listen: false).setListMenu(null);
      Provider.of<LoginNotifier>(context,listen: false).getCountNotification(context);// lấy số thông báo
    } catch (e) {
      print(e);
    }
    setState(() {
      key = UniqueKey();
    });
    _timer.cancel();
  }

  void _handleUserInteraction([_]) {
    print("user using app");
    // if (!_timer.isActive) {
    //   print("_timer.isActive");
    //   // This means the user has been logged out
    //   return;
    // }
    _timer.cancel();
    _initializeTimer();
  }

  @override
  Widget build(BuildContext context) {
    final appNotifier = Provider.of<AppNotifier>(context);
    return ChangeNotifierProvider.value(
      value: appNotifier,
      child:  Consumer<AppNotifier>(builder: (context, AppNotifier appNotifier, _) {
        return Listener(
            onPointerDown: (_) {
          _handleUserInteraction();
        },
          key: key,
          child: ScreenUtilInit(
              designSize: const Size(750 , 1334),
              builder: (_,__) => KeyboardDismisser(
                child: MaterialApp(
                  /// Chặn phóng to chữ
                  builder: (context, child) {
                    return MediaQuery(
                      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                      child: RootLayout(
                        child: child,
                      ),
                    );
                  },
                  supportedLocales: widget.supportedLocales,
                  localizationsDelegates: widget.localizationsDelegates,
                  locale: widget.locale,
                  // navigatorKey: navigatorKey,
                  localeResolutionCallback: (locale, supportedLocales) {
                    // Check if the current device locale is supported
                    for (final supportedLocale in supportedLocales) {
                      if (supportedLocale.languageCode ==
                          locale?.languageCode &&
                          supportedLocale.countryCode ==
                              locale?.countryCode) {
                        return supportedLocale;
                      }
                    }
                    // If the locale of the device is not supported, use the first one
                    // from the list (English, in this case).
                    return supportedLocales.first;
                  },
                  theme: appNotifier.getThemeData,
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: Routers.generateRoute,
                  // initialRoute: '/',
                  home: initScreen == null
                      ? ChangeNotifierProvider<TermOfUseNotifier>(
                      create: (context) => TermOfUseNotifier(),
                      child: TermOfUseScreen())
                      : ScreenRootPage(),
                ),
              )),
        );
    })
    );
  }
}
