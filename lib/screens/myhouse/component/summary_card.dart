import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_agent/theme/color.dart';
import 'package:smart_agent/utils/dimensions.dart';
import 'package:smart_agent/utils/global_style.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    Key? key,
    this.amount,
  }) : super(key: key);
  final double? amount;

  @override
  Widget build(BuildContext context) {
    final value = new NumberFormat("#,##0.00", "en_US");
    return Container(
      margin: EdgeInsets.all(Dimensions.getProportionalWidth(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'verified',
                  style: GlobalStyle.interestTitleStyle,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: Dimensions.getProportionalHeight(200),
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.getProportionalWidth(20),
                vertical: Dimensions.getProportionalWidth(15),
              ),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\u20A6 ${value.format(amount)}",
                                style: TextStyle(
                                  fontSize: Dimensions.getProportionalWidth(24),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: Dimensions.getProportionalHeight(4),
                              ),
                              Text('Annual Rent',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Expected cash back',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "\u20A6 ${value.format(20000)}",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                              height: 40, child: VerticalDivider(color: lite)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Month Used',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "22",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ])),
        ],
      ),
    );
  }
}
