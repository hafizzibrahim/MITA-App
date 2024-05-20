import 'package:flutter/material.dart';
import 'package:mita_app/pages/pages.dart';
import 'package:mita_app/shared/shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
              backgroundColor: whiteColor,
              elevation: 0,
              iconTheme: IconThemeData(color: blackColor),
              centerTitle: true,
              titleTextStyle:
              blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold))),
      routes: {
        '/' : (context) => const MainPage(),

        '/login-page' : (context) => const LoginPage(),
        '/register-page': (context) => const RegisterPage(),

        '/main-page': (context) => const MainPage(),
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}
