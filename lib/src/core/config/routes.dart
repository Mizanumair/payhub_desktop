import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payhub/src/components/homenavbar.dart';
import 'package:payhub/src/features/auth/login/login_binding.dart';
import 'package:payhub/src/features/auth/login/login_screen.dart';
import 'package:payhub/src/features/features/home/home_binding.dart';
import 'package:payhub/src/features/features/home/home_screen.dart';


class AppRoutes {

  static const String login = '/login';
  static const String home = '/home';
  static const String navBar = '/navBar';

  static String getLoginRoute() => login;
  static String getHomeRoute() => home;
  static String getNavBar() => home;


  static generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case login:
        return GetPageRoute(
            settings: settings,
            routeName: getLoginRoute(),
            page: () => LoginScreen());
      case home:
        return GetPageRoute(
            settings: settings,
            routeName: getHomeRoute(),
            page: () => HomeScreen());
      case navBar:
        return GetPageRoute(
            settings: settings,
            routeName: getNavBar(),
            page: () => HomeNavBar());

      default:
        return null;
    }
  }

  static getPages() => [

        GetPage(
          name: login,
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: home,
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: navBar,
          page: () => HomeNavBar(),
          binding: HomeBinding(),
        ),

      ];
}
