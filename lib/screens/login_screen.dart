import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_1/screens/signup_screen.dart';
import '../controller/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.put(LoginController());
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();

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
                const Positioned(
                  top: 70,
                  child: Text(''),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                'Log in',
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
              key: loginKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        hintText: 'Enter your username',
                        suffixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: '***********',
                          suffixIcon: Icon(FontAwesomeIcons.eyeLowVision),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
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
                    'Remember me',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(() {
              return loginController.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : SizedBox(
                      width: 370,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (loginKey.currentState!.validate()) {
                            loginController.loginUser(
                              emailController.text,
                              passwordController.text,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    );
            }),
            SizedBox(
              height: 3.h,
            ),
            const Text(
              'Forgot password?',
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
            SizedBox(
              height: 5.h,
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
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                    onTap: () {
                      Get.to(SignupScreen());
                    },
                    child: const Text(
                      ' Sign up ',
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

Widget myIcon(IconData icon) {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: Colors.red,
    ),
    child: IconButton(onPressed: () {}, icon: Icon(icon), color: Colors.white),
  );
}
