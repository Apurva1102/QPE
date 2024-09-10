import 'package:get/get.dart';
import 'package:tech_1/screens/createpass_screen.dart';
import 'package:tech_1/screens/dailytask_screen.dart';
import 'package:tech_1/screens/login_screen.dart';
import 'package:tech_1/screens/otp_screen.dart';
import 'package:tech_1/screens/profile_screen.dart';
import 'package:tech_1/screens/scandoc_screen.dart';
import 'package:tech_1/screens/signin_screen.dart';
import 'package:tech_1/screens/signup_screen.dart';
import 'package:tech_1/screens/splash_screen.dart';
import 'package:tech_1/screens/verify_screen.dart';

class AppPages {
  static const INITIAL_ROUTE = '/splash';

  static final routes = [
    GetPage(
      name: '/splash',
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: '/login',
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: '/signup',
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: '/signin',
      page: () => const SignInScreen(),
    ),
    GetPage(
      name: '/verify',
      page: () => const VerifyScreen(),
    ),
    GetPage(
      name: '/otp',
      page: () => const OtpScreen(),
    ),
    GetPage(
      name: '/createpass',
      page: () => const Createpass_Screen(),
    ),
    GetPage(
      name: '/dailytask',
      page: () => DailytaskScreen(),
    ),
    GetPage(
      name: '/profile',
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: '/scandoc',
      page: () => ScandocScreen(),
    )
  ];
}
