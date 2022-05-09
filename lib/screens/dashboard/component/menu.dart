import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:dweller/theme/color.dart';
import 'package:dweller/widgets/menu_card.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.count(
        childAspectRatio: 1.3,
        primary: false,
        padding: const EdgeInsets.all(4),
        crossAxisCount: 2,
        children: [
          GridCard(
              color: green,
              icon: FontAwesomeIcons.home,
              text: 'My House',
              description:
                  'You Can Manage Your House And Put To-Let When You Leaving',
              numOfitem: 3,
              press: () => Get.toNamed('/myhouse')),
          GridCard(
            color: pink,
            icon: FontAwesomeIcons.search,
            text: 'House Search',
            description:
                'Raphael is an AI that helps you find a house of your choice',
            press: () => null,
          ),
          const GridCard(
              color: purple,
              icon: FontAwesomeIcons.mapMarkerAlt,
              text: 'Know Location',
              description:
                  'Do you know you can know location before packing there or buy any assets',
              press: null),
          const GridCard(
              color: orange,
              icon: FontAwesomeIcons.wallet,
              text: 'Save to Pay',
              description: 'You can pay your bills',
              press: null),
        ],
      ),
    );
  }
}
