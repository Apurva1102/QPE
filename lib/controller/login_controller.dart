import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:tech_1/screens/signup_screen.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  Future<void> loginUser(String email, String password) async {
    final url = 'http://192.168.200.121:5005/login';
    final headers = {'Content-Type': 'application/json'};
    final body =
        jsonEncode({"userNameOrEmail": email, "userPassword": password});

    isLoading.value = true;

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: headers,
        body: body,
      );

      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
      print(' Body: ${body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseBody = jsonDecode(response.body);

        // Print statements for debugging (can be removed)
        print('Response Body Parsed: $responseBody');

        if (responseBody['status'] == true) {
          Get.to(SignupScreen());

          String? token = responseBody['data']?['token'];
          if (token != null) {
            await processToken(token);
            routeBasedOnRole();
          } else {
            Get.snackbar(
              'Error',
              'Token not found in response. Please contact support.',
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        } else {
          Get.snackbar(
            'Error',
            responseBody['message'] ?? 'An unknown error occurred.',
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      } else {
        Get.snackbar(
          'Error',
          'Failed to login. Status code: ${response.statusCode}. Please try again.',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'An error occurred during login: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
      // Handle the error here (e.g., show a more specific message or retry)
      // You might not want to navigate to SignupScreen on all errors.
    } finally {
      isLoading.value = false;
    }
  }

  // Implement token processing logic here (e.g., secure storage)
  Future<void> processToken(String token) async {
    print('Processing Token: $token');
  }

  // Implement role-based routing logic here
  void routeBasedOnRole() {
    print('Routing based on role');
  }
}
