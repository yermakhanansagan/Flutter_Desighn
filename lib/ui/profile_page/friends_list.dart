import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/colors.dart';
import 'package:flutter_app2/data/dummy_data.dart';

class FriendsList extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    var selectedSize = MediaQuery.of(context).size.width; //
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Friends",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
          ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    indent: 72,
                  ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: friends.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(friends[index].avatar),
                  ),
                  title: Text(
                    friends[index].name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  subtitle: Text(
                    friends[index].position,
                    style: Theme.of(context).textTheme.bodyText2.apply(
                          color: Color(black).withOpacity(0.6),
                        ),
                  ),
                  trailing: IconButton(
                    icon:
                        Image.asset("lib/assets/icons/close_24px_friends.png"),
                    onPressed: () {},
                  ),
                );
              }),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            width: selectedSize * 0.911,
            height: selectedSize * 0.1,
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
