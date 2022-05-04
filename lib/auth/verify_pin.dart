import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:dweller/theme/color.dart';

class VerifyPinPage extends StatefulWidget {
  const VerifyPinPage({Key? key}) : super(key: key);

  @override
  State<VerifyPinPage> createState() => _VerifyPinPageState();
}

class _VerifyPinPageState extends State<VerifyPinPage> {
  final TextEditingController _etPin = TextEditingController();

  String errorText = '';
  bool _buttonDisabled = true;
  String _verificationCode = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: primary,
          elevation: 0,
        ),
      ),
      backgroundColor: appBgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: ListView(
          children: [
            const Icon(
              LineIcons.userShield,
              color: primary,
              size: 65,
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Account Verification',
                  style: TextStyle(
                      color: primary,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Enter code sent to your email',
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: PinCodeTextField(
                autoFocus: true,
                appContext: context,
                keyboardType: TextInputType.number,
                length: 4,
                showCursor: false,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldHeight: 50,
                    fieldWidth: 40,
                    inactiveColor: grey,
                    activeColor: primary,
                    selectedColor: primary),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                onChanged: (value) {
                  setState(() {
                    if (value.length == 4) {
                      _buttonDisabled = false;
                    } else {
                      _buttonDisabled = true;
                    }
                    _verificationCode = value;
                  });
                },
                beforeTextPaste: (text) {
                  return false;
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              errorText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12.0, color: red),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
