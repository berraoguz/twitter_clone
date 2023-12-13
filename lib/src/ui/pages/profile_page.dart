import 'package:flutter/material.dart';
import 'package:twitter_clone/src/models/follower_item_model.dart';
import 'package:twitter_clone/src/ui/pages/follower_page.dart';
import 'package:twitter_clone/src/utils/routes.dart';

class PageProfile extends StatefulWidget {
  final FollowerItemModel profile;

  const PageProfile({super.key, required this.profile});

  @override
  State<PageProfile> createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile UserName : ${widget.profile.userName}'),
            TextButton(
                child: const Text('Go Home'),
                onPressed: () {
                  // Navigator.popUntil(context, (route) => route.isFirst);

                  Navigator.pushReplacementNamed(
                      context, Routes.followingPageRoute,
                      arguments: PageFollowerArgs(
                          title: 'TEST2', showBackButton: true));
                }),
          ],
        ),
      ),
    );
  }
}
