import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_1/screens/createpass_screen.dart';
import 'package:tech_1/screens/login_screen.dart';
import 'package:tech_1/screens/verify_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Image(
                image: AssetImage('assets/images/img2.png'),
                fit: BoxFit.cover,
              ),
            ),
            const Center(
              child: Text(
                'Verify your email',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                    fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'Please enter your verification code ',
                    style: TextStyle(color: Colors.grey, fontSize: 18)),
                TextSpan(
                    text: 'we sent to your ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18)),
                TextSpan(
                    text: 'email address ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18)),
                TextSpan(
                    text: 'to complete the verification ',
                    style: TextStyle(color: Colors.grey, fontSize: 18)),
                TextSpan(
                    text: 'process ',
                    style: TextStyle(color: Colors.grey, fontSize: 18)),
              ]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                otp(),
                otp(),
                otp(),
                otp(),
                otp(),
                otp(),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
                width: 375,
                height: 58,
                child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.teal, width: 1),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(Createpass_Screen());
                            },
                            child: Text(
                              'Verify',
                              style:
                                  TextStyle(color: Colors.teal, fontSize: 22),
                              // ),
                            ))
                      ],
                    ))),
            SizedBox(
              height: 180,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Back to ',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                    child: const Text(
                      ' Login ',
                      style: TextStyle(color: Colors.teal, fontSize: 18),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
