import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dweller/route/route_helper.dart';
import 'package:dweller/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dweller',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      initialRoute: RouteHelper.INITIAL_ROUTE,
      getPages: RouteHelper.routes,
    );
  }
}
