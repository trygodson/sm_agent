import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_agent/theme/color.dart';
import 'package:smart_agent/utils/dimensions.dart';

class GridCard extends StatelessWidget {
  const GridCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.description,
    required this.color,
    this.numOfitem = 0,
    this.press,
  }) : super(key: key);

  final IconData? icon;
  final String? text, description;
  final int numOfitem;
  final Color color;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: Dimensions.getProportionalWidth(55),
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                padding: EdgeInsets.all(Dimensions.getProportionalWidth(15)),
                height: Dimensions.getProportionalHeight(130),
                width: Dimensions.getProportionalWidth(170),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.1),
                      spreadRadius: .5,
                      blurRadius: .5,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(children: [
                  Container(
                    padding:
                        EdgeInsets.all(Dimensions.getProportionalWidth(12)),
                    height: Dimensions.getProportionalWidth(46),
                    width: Dimensions.getProportionalWidth(46),
                    decoration: BoxDecoration(
                      // color: color.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: primary,
                    ),
                  ),
                  Text(text!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: primary, fontWeight: FontWeight.bold)),
                  Text(
                    description!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 8),
                  )
                ]),
              ),
              if (numOfitem != 0)
                Positioned(
                  top: -3,
                  right: 0,
                  child: Container(
                    height: Dimensions.getProportionalWidth(16),
                    width: Dimensions.getProportionalWidth(16),
                    decoration: BoxDecoration(
                      color: darkRed,
                      shape: BoxShape.circle,
                      border: Border.all(width: 1.5, color: Colors.white),
                    ),
                    child: Center(
                      child: Text(
                        "$numOfitem",
                        style: TextStyle(
                          fontSize: Dimensions.getProportionalWidth(10),
                          height: 1,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
            ]),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
