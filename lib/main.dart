import 'package:hiit/localNotification.dart';

import 'package:flutter/material.dart';
import 'package:hiit/ForgetPassword.dart';
import 'package:hiit/myHomePage.dart';
import 'package:hiit/myLoginPage.dart';
import 'package:hiit/othersHomePage.dart';

import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'myRegisterPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalNotification.init();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/': (context) => MyLoginPage(),
        '/register': (context) => MyRegisterPage(),
        '/home': (context) => MyHomePage(
              title: '',
            ),
        '/othershome': (context) => OthersHomePage(),
        '/forget': (context) => ForgetPasswordPage(),
      },
      initialRoute: '/', // Rota inicial
    );
  }
}
