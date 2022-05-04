import 'package:flutter/material.dart';
import 'package:dweller/theme/color.dart';
import 'package:dweller/utils/dimensions.dart';

class QuickMenuItem extends StatelessWidget {
  const QuickMenuItem({
    Key? key,
    required this.data,
    this.onTap,
    this.iconBgColor = green,
    this.iconColor = Colors.black,
  }) : super(key: key);
  final data;
  final GestureTapCallback? onTap;
  final Color? iconBgColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
        margin: const EdgeInsets.only(right: 10),
        width: Dimensions.getProportionalHeight(100),
        height: Dimensions.getProportionalHeight(100),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: .5,
              blurRadius: .5,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.getProportionalHeight(11)),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: iconBgColor),
              child: Center(
                  child: Icon(data["icon"],
                      size: Dimensions.getProportionalHeight(18),
                      color: iconColor)),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                data["name"],
                textAlign: TextAlign.center,
                // maxLines: 1,
                // overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  color: darker,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Visibility(
            //     visible: selected,
            //     child: Container(
            //       width: double.infinity, height: 2,
            //       decoration: BoxDecoration(
            //         color: primary,
            //       ),
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
