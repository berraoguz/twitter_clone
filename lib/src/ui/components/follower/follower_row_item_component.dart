import 'package:flutter/material.dart';
import 'package:twitter_clone/gen/fonts.gen.dart';
import 'package:twitter_clone/src/models/follower_item_model.dart';
import 'package:twitter_clone/src/ui/extensions/text_style.dart';
import 'package:twitter_clone/src/utils/routes.dart';

class CompFollowerRowItem extends StatelessWidget {
  final FollowerItemModel model;
  const CompFollowerRowItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.profilePageRoute, arguments: model);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: Row(
          children: [
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.userName.toUppercaseFirstLetter(),
                      style: const TextStyle(
                          color: Color(0xff141619),
                          fontWeight: FontWeight.w600,
                          fontFamily: FontFamily.sFPro,
                          fontSize: 14),
                    ),
                    Text(
                      model.description.toUppercaseFirstLetter(),
                      style: const TextStyle(
                          color: Color(0xff141619),
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.sFPro,
                          fontSize: 19),

                      //
                    ),
                    Text(
                      '${model.followerCount.toString()} follower'
                          .toUppercaseFirstLetter(),
                      style: const TextStyle(
                          color: Color(0xff687684),
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.sFPro,
                          fontSize: 16),
                    ),
                    Text(
                      '${model.followingCount.toString()} following',
                      style: const TextStyle(
                              color: Color(0xff687684),
                              // fontWeight: FontWeight.w400,
                              fontFamily: FontFamily.sFPro,
                              fontSize: 14)
                          .sfpro,
                    )
                  ],
                )),
            Flexible(
                child: ClipOval(
                    child: Container(
              color: model.avatarBg,
              height: 100,
              width: 100,
            )))
          ],
        ),
      ),
    );
  }
}
