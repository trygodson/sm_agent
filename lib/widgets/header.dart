import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dweller/theme/color.dart';
import 'package:dweller/utils/dimensions.dart';
import 'package:dweller/utils/global_style.dart';
import 'package:dweller/widgets/icon_with_counter.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.getProportionalWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SearchField(),
          Row(
            children: [
              CircleAvatar(
                  radius: 30.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      'https://avatars.githubusercontent.com/u/86506519?v=4',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Howdy Pelomo",
                    style: GlobalStyle.h2Style,
                  ),
                  SizedBox(
                    height: Dimensions.getProportionalHeight(3),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: primary,
                        size: Dimensions.getProportionalHeight(15),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Lugbe, Nigeria",
                        style: GlobalStyle.subTextStyle,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),

          IconBtnWithCounter(
            svgSrc: FontAwesomeIcons.bell,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
