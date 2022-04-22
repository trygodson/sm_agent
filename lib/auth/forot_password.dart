import 'package:flutter/material.dart';
import 'package:smart_agent/theme/color.dart';
import 'package:smart_agent/utils/global_style.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _etEmail = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primary,
          elevation: 0,
          title: const Text('Forgot password'),
        ),
      ),
      backgroundColor: appBgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: ListView(
          children: [
            const Text(
              'Enter your registered email address and a link will be sent to your email',
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
              height: 25,
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SignInPage()));
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
                      "Reset password",
                      style: GlobalStyle.darkButtonStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
