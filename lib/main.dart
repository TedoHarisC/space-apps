import 'package:flutter/material.dart';
import 'package:space/pages/home_page.dart';
import 'package:space/pages/onboarding_page.dart';
import 'package:space/pages/search_page.dart';
import 'package:space/pages/search_result_page.dart';
import 'package:space/pages/sign_in_page.dart';
import 'package:space/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/search-result': (context) => SearchResultPage(),
      },
    );
  }
}
