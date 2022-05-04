import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:dweller/utils/dimensions.dart';

class FinanceWidget extends StatelessWidget {
  const FinanceWidget({
    Key? key,
    this.amount,
  }) : super(key: key);
  final double? amount;

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    final value = new NumberFormat("#,##0.00", "en_US");

    return SizedBox(
        width: Dimensions.screenWidth,
        child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.getProportionalWidth(20)),
                  child: SizedBox(
                    height: Dimensions.getProportionalWidth(46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('₦ ${value.format(amount)}'),
                        const Text(
                          'Total Balance',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.getProportionalWidth(20)),
                  child: SizedBox(
                    height: Dimensions.getProportionalWidth(46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('₦ ${value.format(amount)}'),
                        const Text(
                          'Loan Balance',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),
              Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.getProportionalWidth(20)),
                  child: SizedBox(
                    height: Dimensions.getProportionalWidth(46),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(" ₦ ${value.format(amount)}"),
                        const Text(
                          'Total Amount Earned',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  )),
            ]));
  }
}
