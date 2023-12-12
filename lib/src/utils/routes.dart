import 'package:flutter/material.dart';
import 'package:twitter_clone/src/ui/pages/follower_page.dart';
import 'package:twitter_clone/src/ui/pages/main_page.dart';

class Routes {
  Routes._();
  static const mainPageRoute = '/';
  static const followingPageRoute = "/followings";
  static Route<dynamic> onGenerateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case mainPageRoute:
        return _route(const PageMain());
      case followingPageRoute:
        return _route(const PageFollower());
      default:
        return MaterialPageRoute(
            builder: (context) =>
                const Material(child: Center(child: Text("error"))));
    }
  }

  static MaterialPageRoute _route(Widget child) =>
      MaterialPageRoute(builder: (context) => child);
}
