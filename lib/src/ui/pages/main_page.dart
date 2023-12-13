import 'package:flutter/material.dart';
import 'package:twitter_clone/src/ui/pages/follower_page.dart';
import 'package:twitter_clone/src/utils/routes.dart';

class PageMain extends StatefulWidget {
  const PageMain({super.key});

  @override
  State<PageMain> createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              //route name i belirli olan sayfanin pushlanmasi icin MaterialApp
              // in icindeki onGenerateRoute fonksiyonunna gonderme yapar
              Navigator.pushNamed(context, Routes.followingPageRoute,
                  arguments: PageFollowerArgs(
                      title: 'Followers',
                      showBackButton: true,
                      titleColor: Colors.grey));
            },
            child: const Text('Go Followings Page')),
      ),
    );
  }
}
