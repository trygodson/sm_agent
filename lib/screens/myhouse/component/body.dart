import 'package:flutter/material.dart';
import 'package:smart_agent/screens/dashboard/component/projects_vertical.dart';
import 'package:smart_agent/screens/myhouse/component/summary_card.dart';
import 'package:smart_agent/utils/data.dart';
import 'package:smart_agent/utils/dimensions.dart';
import 'package:smart_agent/widgets/community_item.dart';
import 'package:smart_agent/widgets/header.dart';
import 'package:smart_agent/widgets/header_title_view_more.dart';
import 'package:smart_agent/widgets/quick_menu_item.dart';
import 'package:smart_agent/widgets/recent_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: content(),
          ),
        ],
      ),
    );
  }
}

Widget content() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Header(),
        SummaryCard(
          amount: 1000000,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: Dimensions.getProportionalHeight(10)),
            child: Row(
              children: otherMenu(),
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.getProportionalWidth(20)),
          child: SectionTitle(title: 'Community Buzz', press: () {}),
        ),
        SizedBox(height: 15),
        listRecent()
      ],
    ),
  );
}

List<Widget> otherMenu() {
  return List.generate(
      otherMenus.length,
      (index) => QuickMenuItem(
            data: otherMenus[index],
            onTap: otherMenus[index]['page'],
            iconBgColor: otherMenus[index]['color'],
            iconColor: Colors.white,
          ));
}

listRecent() {
  List<Widget> lists = List.generate(
      community.length,
      (index) => CommunityItem(
            data: community[index],
          ));

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(
        bottom: Dimensions.getProportionalHeight(5),
        left: Dimensions.getProportionalHeight(20)),
    child: Row(children: lists),
  );
}
