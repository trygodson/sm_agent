import 'package:flutter/material.dart';
import 'package:dweller/theme/color.dart';
import 'component/body.dart';

class MyHouse extends StatelessWidget {
  const MyHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: appBgColor,
      body: Body(),
    );
  }
}
