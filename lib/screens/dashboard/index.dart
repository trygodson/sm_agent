import 'package:flutter/material.dart';
import 'package:smart_agent/theme/color.dart';

import 'component/body.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: Body(),
    );
  }
}
