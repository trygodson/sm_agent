import 'package:get/get.dart';
import 'package:smart_agent/screens/dashboard/index.dart';
import 'package:smart_agent/screens/myhouse/index.dart';
import 'package:smart_agent/screens/splash_screen.dart';

class RouteHelper {
  static const String INITIAL_ROUTE = '/';
  static const String MY_HOUSE_ROUTE = '/myhouse';

  // static String getSplashPage() {
  //   return "$splashScreen";
  // }

  // static String initialRoute() {
  //   return "$INITIAL_ROUTE";
  // }

  // static String getPopularFoodDetail(int index, String page) {
  //   return "$popularFoodDetail?pageId=$index&page=$page";
  // }

  // static String getRecommendedFoodDetails(int index, String page) {
  //   return "$recommendedFoodDetail?pageId=$index&page=$page";
  // }

  // static String getCartPage() {
  //   return cartRoute;
  // }

  static List<GetPage> routes = [
    GetPage(
      name: INITIAL_ROUTE,
      page: () => SplashScreenPage(),
      // page: () => Dashboard(),
    ),
    GetPage(
      name: MY_HOUSE_ROUTE,
      page: () => MyHouse(),
      // page: () => Dashboard(),
    ),
  ];
}
