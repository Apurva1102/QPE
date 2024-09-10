import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_1/screens/verify_screen.dart';
import 'login_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/img1.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'By continuing you agree to our ',
                    style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: 'Terms of Services ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline)),
                TextSpan(text: ' and ', style: TextStyle(color: Colors.grey))
              ]),
            ),
            const Text('Private Policy',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                    labelText: 'Email or phone no',
                    hintText: 'Enter your email or phone no',
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(VerifyScreen());
                    },
                    style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.teal,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: const Text(
                      'Continue with password',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.zero),
                          side: BorderSide(color: Colors.teal, width: 1),
                        )),
                    child: const Text(
                      'Send one time passcode',
                      style: TextStyle(color: Colors.teal, fontSize: 18),
                    ))),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.teal,
                  ),
                  Text(
                    'I agree with terms and conditions',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 3,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'OR',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myIcon(FontAwesomeIcons.google),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.facebook),
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.black,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.apple),
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
