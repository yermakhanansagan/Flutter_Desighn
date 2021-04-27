import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/colors.dart';
import 'package:flutter_app2/constants/constants.dart';

import 'package:flutter_app2/ui/profile_page/friends_list.dart';
import 'package:flutter_app2/ui/profile_page/rounded_avatar.dart';
import 'package:flutter_app2/ui/profile_page/select_type.dart';

import 'media_part.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(white),
      appBar: AppBar(
        backgroundColor: Color(white),
        leading: IconButton(
          icon: Image.asset("lib/assets/icons/arrow_back_24px.png"),
          onPressed: () {},
        ),
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
              icon: Image.asset("lib/assets/icons/more_vert_24px.png"),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RoundedAvatar(),
            Divider(
              indent: 17,
              endIndent: 18,
            ),
            SelectType(),
            Divider(
              indent: 17,
              endIndent: 18,
            ),
            FriendsList(),
            Divider(
              indent: 17,
              endIndent: 18,
            ),
            MediaPart(),
            Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 144, vertical: 14),
                child: Divider(
                  color: Color(black).withOpacity(0.6),
                  height: 2,
                ),)
          ],
        ),
      ),
    );
  }
}

