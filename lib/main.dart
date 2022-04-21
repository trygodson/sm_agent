import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_agent/route/route_helper.dart';
import 'package:smart_agent/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Smart Agent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      initialRoute: RouteHelper.INITIAL_ROUTE,
      getPages: RouteHelper.routes,
    );
  }
}
