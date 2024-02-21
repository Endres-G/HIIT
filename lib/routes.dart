import 'package:flutter/widgets.dart';
import 'package:hiit/ForgetPassword.dart';
import 'package:hiit/myHomePage.dart';
import 'package:hiit/myLoginPage.dart';
import 'package:hiit/othersHomePage.dart';

import 'myRegisterPage.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/': (context) => MyLoginPage(),
    '/register': (context) => MyRegisterPage(),
    '/home': (context) => MyHomePage(
          title: '',
        ),
    '/othershome': (context) => OthersHomePage(),
    '/forget': (context) => ForgetPasswordPage(),
  };
  static String initial = "/home";

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
