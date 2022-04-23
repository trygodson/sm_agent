import 'package:flutter/material.dart';
import 'package:smart_agent/utils/dimensions.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: Dimensions.getProportionalWidth(18),
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        // GestureDetector(
        //   onTap: press,
        //   child: Text(
        //     "View All Projects",
        //     style: TextStyle(color: Color(0xFFBBBBBB)),
        //   ),
        // ),
      ],
    );
  }
}
