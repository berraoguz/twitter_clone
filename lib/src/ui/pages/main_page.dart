import 'package:flutter/material.dart';
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
                Navigator.pushNamed(context, Routes.followingPageRoute);
              },
              child: const Text('Go Followings Page'))),
    );
  }
}
