import 'package:flutter/material.dart';
import 'package:dweller/auth/verify_pin.dart';
import 'package:dweller/theme/color.dart';
import 'package:dweller/utils/global_style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _etEmail = TextEditingController();
  final TextEditingController _etFullName = TextEditingController();
  final TextEditingController _etPhoneNumber = TextEditingController();
  final TextEditingController _etPassword = TextEditingController();
  final TextEditingController _etConfirmPassword = TextEditingController();
  bool _obscureText = true;
  IconData _iconVisible = Icons.visibility_off;
  bool _obscureText1 = true;
  IconData _iconVisible1 = Icons.visibility_off;
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

  void _toggleObscureText1() {
    setState(() {
      _obscureText1 = !_obscureText1;
      if (_obscureText1 == true) {
        _iconVisible1 = Icons.visibility_off;
      } else {
        _iconVisible1 = Icons.visibility;
      }
    });
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
              'Sign Up',
              style: GlobalStyle.h1Style,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Create an account so you start browsing through\nproperties, hassle free',
              style: GlobalStyle.normalStyle,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              textCapitalization: TextCapitalization.words,
              validator: (value) {
                if (value!.isEmpty) return "Enter Full Name";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primary,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              controller: _etFullName,
              style: GlobalStyle.normalStyle,
              decoration: const InputDecoration(
                border: InputBorder.none,
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
                labelText: 'First Name',
                labelStyle: TextStyle(
                  color: primary,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) return "Field can't be empty";
                if (value.length != 11) return "Check phone number";
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primary,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.phone,
              controller: _etPhoneNumber,
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
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                  color: primary,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
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
            TextFormField(
              obscureText: _obscureText,
              validator: (value) {
                if (value!.isEmpty) return "Passwords don't match";
                if (_etPassword.text != _etConfirmPassword.text) {
                  return "Passwords don't match";
                }
                return null;
              },
              textInputAction: TextInputAction.next,
              cursorColor: primary,
              textAlign: TextAlign.start,
              keyboardType: TextInputType.text,
              controller: _etConfirmPassword,
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
                labelText: 'Confirm Password',
                labelStyle: const TextStyle(
                  color: primary,
                ),
                suffixIcon: IconButton(
                    icon:
                        Icon(_iconVisible1, color: Colors.grey[400], size: 20),
                    onPressed: () {
                      _toggleObscureText1();
                    }),
              ),
            ),
            const SizedBox(
              height: 30,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyPinPage()));
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
                      "Create an account",
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
