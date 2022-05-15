import 'package:flutter/material.dart';
import 'package:dweller/screens/dashboard/component/projects_vertical.dart';
import 'package:dweller/utils/dimensions.dart';

import 'finance_widget.dart';
import '../../../widgets/header.dart';
import 'menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          SizedBox(height: Dimensions.getProportionalHeight(20)),
          const Header(),
          SizedBox(height: Dimensions.getProportionalHeight(15)),
          const FinanceWidget(
            amount: 20000,
          ),
          // const SummaryCard(
          //   amount: 1000000,
          // ),
          const Menu(),

          ProjectVertical()
        ],
      ),
    ));
  }
}
