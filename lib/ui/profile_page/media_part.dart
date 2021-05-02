import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/colors.dart';
import 'package:flutter_app2/constants/size_config.dart';

class MediaPart extends StatelessWidget {
  List<String> imgs = [
    "lib/assets/images/media/media1.png",
    "lib/assets/images/media/media2.png",
    "lib/assets/images/media/media3.png",
    "lib/assets/images/media/media4.png",
    "lib/assets/images/media/media5.png",
    "lib/assets/images/media/media6.png",
    "lib/assets/images/media/media7.png",
    "lib/assets/images/media/media8.png",
    "lib/assets/images/media/media9.png",
  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "My media",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 17, mainAxisSpacing: 14),
            itemCount: imgs.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    height: SizeConfig.screenWidth * 0.2685, // умножаю на занимаемое место по отношению к ширине экрана в процентах
                    width: SizeConfig.screenWidth * 0.2685,
                    child: Image.asset(
                      imgs[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: SizeConfig.screenWidth * 0.022,
                    right: SizeConfig.screenWidth * 0.022,
                    child: Container(
                      width: 24,
                      height: 24,
                      child: FloatingActionButton(
                        backgroundColor: Color(red200),
                        onPressed: () {},
                        child: Image.asset(
                            "lib/assets/icons/close_24px_white.png"),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(white),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                ],
              );
            },
          ),
          Row(

            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("DELETE",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Color(white))),
                  style: ElevatedButton.styleFrom(primary: Color(violet500)),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("ADD",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .apply(color: Color(violet500))),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
