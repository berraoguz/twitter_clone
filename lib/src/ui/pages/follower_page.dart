import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/src/stores/follower_count_store.dart';

import '../components/follower/follower_row_item_component.dart';
import '../components/follower/no_follower_component.dart';

class PageFollower extends StatefulWidget {
  final PageFollowerArgs args;
  const PageFollower({super.key, required this.args});

  @override
  State<PageFollower> createState() => _PageFollowerState();
}

class _PageFollowerState extends State<PageFollower> {
  PageFollowerArgs get args => widget.args;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: Visibility(
            visible: args.showBackButton,
            child: IconButton(
                onPressed: () {
                  // acik olan su andaki sayfayi ekrandan kaldirmaya yarar
                  Navigator.pop(context);
                },
                icon: const Icon(
                  CupertinoIcons.left_chevron,
                  color: Colors.blue,
                )),
          ),
          title: Text(args.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: args.titleColor)),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Subscribed to',
            ),
            Tab(
              text: 'Member of',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            // 1 tab

            // 2 tab
            ListView.builder(
                itemCount: FollowerCountStore.follower.length,
                itemBuilder: (context, index) {
                  return CompFollowerRowItem(
                    model: FollowerCountStore.follower[index],
                  );
                }),
            const CompNoFollower(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: List.generate(
                3,
                (index) => const BottomNavigationBarItem(
                    icon: Icon(Icons.abc), label: ''))),
      ),
    );
  }
}

class PageFollowerArgs {
  final String title;
  final bool showBackButton;
  final Color titleColor;

  PageFollowerArgs(
      {this.titleColor = Colors.red,
      required this.title,
      required this.showBackButton});
}
