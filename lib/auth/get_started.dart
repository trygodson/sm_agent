import 'package:flutter/material.dart';
import 'package:smart_agent/auth/sign_in.dart';
import 'package:smart_agent/auth/sign_up.dart';
import 'package:smart_agent/theme/color.dart';
import 'package:smart_agent/utils/global_style.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(38, 170, 38, 10),
            child: Text(
              'Realty under your Control',
              textAlign: TextAlign.center,
              style: GlobalStyle.titleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: Text(
              'Find your home easy,\n minus the "Agent" wahala',
              textAlign: TextAlign.center,
              style: GlobalStyle.subTitleStyle,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(1),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => primary,
                ),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                )),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign up as a User",
                      style: GlobalStyle.darkButtonStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: grey.withOpacity(0.7), width: 1),
                ),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) => Colors.white,
                ),
                overlayColor: MaterialStateProperty.all(Colors.black),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                    side: BorderSide.none)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Sign Up as a Landlord',
                      style: GlobalStyle.lightButtonStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(70, 0, 70, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: GlobalStyle.boldStyleDim,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()));
                  },
                  child: Text(
                    ' Log in',
                    style: GlobalStyle.underlineTitleStyle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
