import 'package:flutter/material.dart';
import 'package:flutter_app2/constants/colors.dart';


class SelectType extends StatefulWidget {
  @override
  _SelectTypeState createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  List<String> types = ["Black", "Bold", "Medium", "Regular", "Light"];
  int isSelected = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Select type",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 16),
            height: 32,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: types.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    margin: const EdgeInsets.only(right: 8),
                    child: Text(
                      types[index],
                      style: Theme.of(context).textTheme.bodyText2.apply(
                          color: isSelected == index
                              ? Color(violet500)
                              : Color(black).withOpacity(0.38)),
                    ),
                    decoration: BoxDecoration(
                        color: isSelected == index
                            ? Color(0xFFF2E7FE)
                            : Color(black).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(68),
                        border: Border.all(
                          color: isSelected == index ? Color(0xFFDBB2FF) : Color(black).withOpacity(0.08),
                        )),
                  ),
                  onTap: (){
                      setState(() {
                        isSelected = index;
                      });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

