import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_1/screens/signin_screen.dart';
import '../controller/auth_controller.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final AuthController authController = Get.find();
  final GlobalKey<FormState> signupKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/img1.png',
                  fit: BoxFit.cover,
                  //  width: 400,
                  // height: 200,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: signupKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: authController.emailtextController,
                      decoration: const InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter your username',
                          suffixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        final regex =
                            RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        } else if (!regex.hasMatch(value)) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: '***********',
                          suffixIcon: Icon(FontAwesomeIcons.eye),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: TextEditingController(),
                      decoration: const InputDecoration(
                          labelText: 'User Type',
                          hintText: 'Select your user type',
                          suffixIcon: Icon(Icons.arrow_drop_down),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your user type";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
              height: 18,
            ),
            SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (signupKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
            SizedBox(
              height: 2.h,
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
            const SizedBox(
              height: 8,
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
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                    onTap: () {
                      Get.to(SignInScreen());
                    },
                    child: const Text(
                      ' Sign in',
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
