/*
This is splash screen page
Don't forget to add all images and sound used in this pages at the pubspec.yaml
 */

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dweller/auth/get_started.dart';
import 'package:dweller/theme/color.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Timer? _timer;
  int _second = 3; // set timer for 3 second and then direct to next page

  void _startTimer(StatefulWidget nextPage) {
    const period = Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      setState(() {
        _second--;
      });
      if (_second == 0) {
        _cancelSplashTimer();
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => nextPage),
            (Route<dynamic> route) => false);
      }
    });
  }

  void _cancelSplashTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }

  Future<bool> _getOnboarding() async {
    final SharedPreferences _pref = await SharedPreferences.getInstance();
    bool onBoarding = _pref.getBool('onBoarding') ?? true;
    return onBoarding;
  }

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      Platform.isIOS
          ? SystemUiOverlayStyle.dark
          : const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark),
    );

    StatefulWidget nextPage = const GetStartedPage();
    _getOnboarding().then((val) {
      if (val == false) {
        nextPage = const GetStartedPage();
      }

      if (_second != 0) {
        _startTimer(nextPage);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _cancelSplashTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Smart Agent',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26, color: primary, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    ));
  }
}
