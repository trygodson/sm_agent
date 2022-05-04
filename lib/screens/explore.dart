import 'package:flutter/material.dart';
import 'package:dweller/theme/color.dart';
import 'package:dweller/utils/data.dart';
import 'package:dweller/utils/dimensions.dart';
import 'package:dweller/widgets/broker_item.dart';
import 'package:dweller/widgets/company_item.dart';
import 'package:dweller/widgets/custom_textbox.dart';
import 'package:dweller/widgets/icon_box.dart';
import 'package:dweller/widgets/recommend_item.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: appBgColor,
          pinned: true,
          snap: true,
          floating: true,
          title: getHeader(),
        ),
        SliverToBoxAdapter(child: getBody())
      ],
    );
  }

  getHeader() {
    return Row(
      children: [
        const Expanded(
            child: CustomTextBox(
          hint: "Search",
          prefix: Icon(Icons.search, color: Colors.grey),
        )),
        SizedBox(
          width: Dimensions.getProportionalWidth(15),
        ),
        const IconBox(
          child: Icon(Icons.filter_list_rounded, color: Colors.white),
          bgColor: secondary,
          radius: 10,
        )
      ],
    );
  }

  getBody() {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: Dimensions.getProportionalHeight(20),
      ),
      Container(
        margin: EdgeInsets.only(
            left: Dimensions.getProportionalHeight(15),
            right: Dimensions.getProportionalHeight(15)),
        child: const Text(
          "Matched Properties",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(
        height: Dimensions.getProportionalHeight(20),
      ),
      listRecommended(),
      SizedBox(
        height: Dimensions.getProportionalHeight(20),
      ),
      Container(
        margin: EdgeInsets.only(
            left: Dimensions.getProportionalHeight(15),
            right: Dimensions.getProportionalHeight(15)),
        child: const Text(
          "Companies",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      SizedBox(
        height: Dimensions.getProportionalHeight(20),
      ),
      listCompanies(),
      SizedBox(
        height: Dimensions.getProportionalHeight(20),
      ),
      listBrokers(),
      SizedBox(
        height: Dimensions.getProportionalHeight(100),
      ),
    ]));
  }

  listRecommended() {
    List<Widget> lists = List.generate(
        recommended.length, (index) => RecommendItem(data: recommended[index]));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
          bottom: Dimensions.getProportionalHeight(5),
          left: Dimensions.getProportionalHeight(15)),
      child: Row(children: lists),
    );
  }

  int selectedCategory = 0;
  listCompanies() {
    List<Widget> lists = List.generate(
        companies.length,
        (index) => CompanyItem(
              data: companies[index],
              color: listColors[index % 10],
              selected: index == selectedCategory,
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
              },
            ));

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
          bottom: Dimensions.getProportionalHeight(5),
          left: Dimensions.getProportionalHeight(15)),
      child: Row(children: lists),
    );
  }

  listBrokers() {
    List<Widget> lists = List.generate(
        brokers.length, (index) => BrokerItem(data: brokers[index]));

    return Container(
      margin: EdgeInsets.only(
          right: Dimensions.getProportionalHeight(15),
          left: Dimensions.getProportionalHeight(15)),
      child: Column(children: lists),
    );
  }
}
