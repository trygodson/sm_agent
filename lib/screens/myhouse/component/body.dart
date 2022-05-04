import 'package:flutter/material.dart';
import 'package:dweller/screens/dashboard/component/projects_vertical.dart';
import 'package:dweller/screens/myhouse/component/summary_card.dart';
import 'package:dweller/utils/data.dart';
import 'package:dweller/utils/dimensions.dart';
import 'package:dweller/widgets/community_item.dart';
import 'package:dweller/widgets/header.dart';
import 'package:dweller/widgets/header_title_view_more.dart';
import 'package:dweller/widgets/quick_menu_item.dart';
import 'package:dweller/widgets/recent_item.dart';

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
        const Header(),
        const SummaryCard(
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
        const SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.getProportionalWidth(20)),
          child: SectionTitle(title: 'Community Buzz', press: () {}),
        ),
        const SizedBox(height: 15),
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
