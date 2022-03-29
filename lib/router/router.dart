import 'package:flutter/material.dart';
import 'package:portifolio/screens/home_page/home_page_view.dart';
import 'package:portifolio/screens/login_page/login_page_view.dart';
import 'package:portifolio/screens/register/register_page_view.dart';
import 'package:portifolio/screens/splash_screen/splashs_screen.dart';

class RouteGenerator {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case "/login":
        return MaterialPageRoute(builder: (_) =>  HomePageView());
      case "/home":
        return MaterialPageRoute(builder: (_) =>  HomePageView());
      default:
        return MaterialPageRoute(builder: (_) =>  HomePageView());
    }
  }
}
