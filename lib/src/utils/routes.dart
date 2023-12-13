import 'package:flutter/material.dart';
import 'package:twitter_clone/src/models/follower_item_model.dart';
import 'package:twitter_clone/src/ui/pages/follower_page.dart';
import 'package:twitter_clone/src/ui/pages/main_page.dart';
import 'package:twitter_clone/src/ui/pages/profile_page.dart';

class Routes {
  Routes._();
  // ana sayfa route name
  static const mainPageRoute = '/';
// followings route name
  static const followingPageRoute = '/followings';

  // profile route name

  static const profilePageRoute = '/profile';

//[Navigator.pushNamed] fonksiyonundaki routeName i burada switch case e yatirilip gerekli sayfanin pushlanmasini saglayan fonksiyon
  static Route<dynamic> onGenerateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case mainPageRoute:
        return _route(const PageMain());
      case followingPageRoute:
        return _route(PageFollower(
          args: settings.arguments as PageFollowerArgs,
        ));
      case profilePageRoute:
        return _route(
            PageProfile(profile: settings.arguments as FollowerItemModel));
      default:
        return _route(const Material(child: Center(child: Text('ERROR'))));
    }
  }

  //MaterialPageRoute(builder:(context)=>WIDGET) yazmaktan her seferinde kacinmak icin kisaca _route adinda bir fonksyiyon tanimladik.
  static MaterialPageRoute _route(Widget child) =>
      MaterialPageRoute(builder: (context) => child);
}
