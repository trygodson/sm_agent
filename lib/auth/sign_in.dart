import 'package:flutter/material.dart';
import 'package:dweller/auth/forot_password.dart';
import 'package:dweller/auth/sign_up.dart';
import 'package:dweller/screens/root.dart';
import 'package:dweller/theme/color.dart';
import 'package:dweller/utils/global_style.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _etEmail = TextEditingController();
  final TextEditingController _etPassword = TextEditingController();
  String fcmToken = '';
  late FirebaseMessaging messaging;

  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == true) {
        _iconVisible = Icons.visibility_off;
      } else {
        _iconVisible = Icons.visibility;
      }
    });
  }

  @override
  void initState() {
    super.initState();

    // messaging = FirebaseMessaging.instance;
    // messaging.getToken().then((value) => fcmToken = value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primary,
          elevation: 0,
          title: const Text('Back'),
        ),
      ),
      backgroundColor: appBgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: ListView(
          children: [
            const Text(
              'Welcome back!',
              style: GlobalStyle.h1Style,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Sign in to your account',
              style: GlobalStyle.normalStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "Enter Email";
                if (!value.contains('@')) return "Email is invalid";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primary,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.emailAddress,
              controller: _etEmail,
              style: GlobalStyle.normalStyle,
              decoration: const InputDecoration(
                filled: true,
                focusColor: grey,
                fillColor: grey,
                hoverColor: grey,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    borderSide: BorderSide(color: grey, width: 0)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    borderSide: BorderSide(color: grey, width: 0)),
                labelText: 'Email Address',
                labelStyle: TextStyle(
                  color: primary,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: _obscureText,
              validator: (value) {
                if (value!.isEmpty) return "Enter Password";
                if (value.length < 6) return "Password too short";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primary,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              controller: _etPassword,
              style: GlobalStyle.normalStyle,
              decoration: InputDecoration(
                filled: true,
                focusColor: grey,
                fillColor: grey,
                hoverColor: grey,
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    borderSide: BorderSide(color: grey, width: 0)),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    borderSide: BorderSide(color: grey, width: 0)),
                labelText: 'Password',
                labelStyle: const TextStyle(
                  color: primary,
                ),
                suffixIcon: IconButton(
                    icon: Icon(_iconVisible, color: Colors.grey[400], size: 20),
                    onPressed: () {
                      _toggleObscureText();
                    }),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPasswordPage()));
                  },
                  child: const Text(
                    'Forgot password?',
                    style: GlobalStyle.boldStyle,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RootApp()));
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
                      "Continue",
                      style: GlobalStyle.darkButtonStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GlobalStyle.boldStyleDim,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: Text(
                    ' Sign Up',
                    style: GlobalStyle.underlineTitleStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
