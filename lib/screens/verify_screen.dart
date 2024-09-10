import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tech_1/screens/otp_screen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
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
              height: 75,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OtpScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      // foregroundColor: Colors.white,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                        side: BorderSide(color: Colors.teal, width: 1),
                      ),
                    ),
                    child: const Text(
                      'Resend the code',
                      style: TextStyle(color: Colors.teal, fontSize: 18),
                    ))),
          ],
        ),
      ),
    );
  }
}

Widget otp() {
  return SizedBox(
    height: 54,
    width: 54,
    child: TextFormField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
    ),
  );
}
