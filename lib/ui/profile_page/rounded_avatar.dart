import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/colors.dart';

class RoundedAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24.0),
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("lib/assets/images/roundAvatar.jpg"),
                  radius: 118 / 2,
                ),
                Positioned(
                  right: 0.0,
                  bottom: 0.0,
                  child: Container(
                    width: 36,
                    height: 36,
                    child: FloatingActionButton(
                      backgroundColor: Color(violet500),
                      onPressed: () {},
                      child: Image.asset("lib/assets/icons/Vector.png"),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Tiana Rosser",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Developer",
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(
              height: 24,
            ),

          ],
        ),
      ),
    );
  }
}
