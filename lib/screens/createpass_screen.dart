import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tech_1/screens/dailytask_screen.dart';
import '../components/bottom_sheet.dart';
import '../components/card_sheet.dart';
import '../controller/auth_controller.dart';
import 'login_screen.dart';

class Createpass_Screen extends StatefulWidget {
  const Createpass_Screen({super.key});

  @override
  State<Createpass_Screen> createState() => _Createpass_ScreenState();
}

class _Createpass_ScreenState extends State<Createpass_Screen> {
  final AuthController authController = Get.find();
  final GlobalKey<FormState> passKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
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
          'Create Password',
          style: TextStyle(
              fontSize: 23, color: Colors.teal, fontWeight: FontWeight.bold),
        ),
      ),
      Text(
        "Create new password to login",
        style: TextStyle(color: Colors.grey),
        textAlign: TextAlign.center,
      ),
      const SizedBox(
        height: 15,
      ),
      Form(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: authController.passwordtxtController,
              decoration: const InputDecoration(
                  labelText: 'Create password',
                  hintText: 'Enter your password',
                  suffixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: authController.cmpasswordtxtController,
              decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  hintText: '***********',
                  suffixIcon: Icon(FontAwesomeIcons.eye),
                  border: OutlineInputBorder()),
            ),
          ),
        ],
      )),
      const SizedBox(
        height: 25,
      ),
      const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.check_box,
            color: Colors.teal,
          ),
          Text(
            'Remember me',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
      const SizedBox(
        height: 25,
      ),
      SizedBox(
          width: 370,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                bottom_sheet();
              },
              style: ElevatedButton.styleFrom(
                  // foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))),
      SizedBox(
        height: 20,
      ),
      error(),
      TextButton(
          onPressed: () {
            Get.to(DailytaskScreen());
          },
          child: Text("View Profile")),
      SizedBox(
        height: 20,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Text(
              ' Login ',
              style: TextStyle(color: Colors.teal, fontSize: 18),
            ),
          )
        ],
      ),
    ])));
  }
}

Widget error() {
  return SizedBox(
      width: 370,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            card_sheet();
          },
          style: ElevatedButton.styleFrom(
              // foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          child: const Text(
            'Password Incorrect',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )));
}
