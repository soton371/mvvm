import 'package:flutter/material.dart';
import 'package:mvvm/utils/routes/routes_name.dart';
import 'package:mvvm/view/home_scr.dart';
import 'package:mvvm/view/login_view.dart';
import 'package:mvvm/view/undefine_route_scr.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const UndefineRouteScreen());
    }
  }
}

