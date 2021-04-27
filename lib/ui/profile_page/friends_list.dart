import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/colors.dart';
import 'package:flutter_app2/constants/constants.dart';

class FriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kPadding),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kPadding),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Friends",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),

          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("lib/assets/images/friends/corey.png"),
                ),
                title: Text(
                  "Corey George",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                subtitle: Text(
                  "Developer",
                  style: Theme.of(context).textTheme.bodyText2.apply(
                        color: Color(black).withOpacity(0.6),
                      ),
                ),
                trailing: IconButton(
                  icon: Image.asset("lib/assets/icons/close_24px_friends.png"),
                  onPressed: () {},
                ),
              ),
              Divider(
                indent: 72,
              )
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("lib/assets/images/friends/ahmad.png"),
                ),
                title: Text(
                  "Ahmad Vetrovs",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                subtitle: Text(
                  "Developer",
                  style: Theme.of(context).textTheme.bodyText2.apply(
                        color: Color(black).withOpacity(0.6),
                      ),
                ),
                trailing: IconButton(
                  icon: Image.asset("lib/assets/icons/close_24px_friends.png"),
                  onPressed: () {},
                ),
              ),
              Divider(
                indent: 72,
              )
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("lib/assets/images/friends/christofer.png"),
                ),
                title: Text(
                  "Cristofer Workman",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                subtitle: Text(
                  "Developer",
                  style: Theme.of(context).textTheme.bodyText2.apply(
                        color: Color(black).withOpacity(0.6),
                      ),
                ),
                trailing: IconButton(
                  icon: Image.asset("lib/assets/icons/close_24px_friends.png"),
                  onPressed: () {},
                ),
              ),
              Divider(
                indent: 72,
              )
            ],
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("lib/assets/images/friends/tiana.png"),
                ),
                title: Text(
                  "Tiana Korsgaard",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                subtitle: Text(
                  "Developer",
                  style: Theme.of(context).textTheme.bodyText2.apply(
                        color: Color(black).withOpacity(0.6),
                      ),
                ),
                trailing: IconButton(
                  icon: Image.asset("lib/assets/icons/close_24px_friends.png"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kPadding),
            width: 328,
            height: 36,
            child: OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ADD FRIEND",
                    style: Theme.of(context).textTheme.button,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Image(
                      image: AssetImage("lib/assets/icons/add_24px_black.png")),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
