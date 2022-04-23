import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_agent/utils/data.dart';
import 'package:smart_agent/utils/dimensions.dart';
import 'package:smart_agent/widgets/header_title_view_more.dart';
import 'package:smart_agent/widgets/quick_menu_item.dart';

class ProjectVertical extends StatelessWidget {
  List<Map<String, dynamic>> new_orders = [
    {
      "category": "Hotels",
      "numOfProjects": 10,
      "imgUrl":
          "https://media-cdn.tripadvisor.com/media/photo-s/1c/de/fb/85/exterior.jpg",
    },
    {
      "category": "School",
      "numOfProjects": 17,
      "imgUrl":
          "https://stayinformedgroup.com/wp-content/uploads/2021/08/best-boarding-schools-in-nigeria-1.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.getProportionalWidth(20)),
              child: SectionTitle(
                title: "Quick Menu",
                press: () {},
              ),
            ),
            SizedBox(height: Dimensions.getProportionalWidth(20)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.getProportionalHeight(10)),
                child: Row(
                  children: quickMenu(),
                ),
              ),
            )
          ],
        ));
  }
}

List<Widget> quickMenu() {
  return List.generate(
      quickMenus.length,
      (index) => QuickMenuItem(
            data: quickMenus[index],
            onTap: () {},
          ));
}
