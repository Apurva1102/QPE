// // class ApiServices {
// //   Future<ApiResponse> apiCallLogin(Map<String, String> credentials) async {
// //     // Simulate an API call
// //     await Future.delayed(const Duration(seconds: 2));
// //
// //     if (credentials['email'] == 'student' &&
// //         credentials['password'] == 'student') {
// //       return ApiResponse(token: 'dummy_token');
// //     } else {
// //       return ApiResponse(error: 'Invalid username or password');
// //     }
// //   }
// // }
// //
// // class ApiResponse {
// //   final String? token;
// //   final String? error;
// //
// //   ApiResponse({this.token, this.error});
// // }
//
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// //
// // class ApiServices {
// //   final String baseUrl = 'http://192.168.200.121:5005';
// //
// //   Future<ApiResponse> apiCallLogin(Map<String, String> credentials) async {
// //     final url = Uri.parse('$baseUrl/login'); // Using the /login endpoint
// //
// //     try {
// //       final response = await http.post(
// //         url,
// //         headers: {'Content-Type': 'application/json'},
// //         body: json.encode(credentials),
// //       );
// //
// //       if (response.statusCode == 200) {
// //         final jsonData = json.decode(response.body);
// //
// //         if (jsonData['token'] != null) {
// //           return ApiResponse(token: jsonData['token']);
// //         } else {
// //           return ApiResponse(error: jsonData['error'] ?? 'Unexpected error');
// //         }
// //       } else {
// //         return ApiResponse(error: 'Invalid username or password');
// //       }
// //     } catch (e) {
// //       return ApiResponse(
// //           error: 'Failed to connect to the server. Please try again.');
// //     }
// //   }
// // }
// //
// // class ApiResponse {
// //   final String? token;
// //   final String? error;
// //
// //   ApiResponse({this.token, this.error});
// // }
//
// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/snackbar/snackbar.dart';
// import 'package:http/http.dart' as http;
//
// Future<void> loginUser(
//     BuildContext context, String email, String password) async {
//   final url = 'http://192.168.200.121:5005/login';
//   final headers = {'Content-Type': 'application/json'};
//   final body = jsonEncode({"email": email, "password": password});
//
//   // Indicate loading state
//   loginController.isLoading.value = true;
//
//   try {
//     final response = await http.post(
//       Uri.parse(url),
//       headers: headers,
//       body: body,
//     );
//
//     if (response.statusCode == 200 || response.statusCode == 201) {
//       final responseBody = jsonDecode(response.body);
//
//       if (responseBody['status'] == true) {
//         String? token = responseBody['data']?['token'];
//         if (token != null) {
//           await processToken(token);
//           routeBasedOnRole(context);
//         } else {
//           Get.snackbar(
//             'Error',
//             'Token not found in response. Please contact support.',
//             snackPosition: SnackPosition.BOTTOM,
//           );
//         }
//       } else {
//         Get.snackbar(
//           'Error',
//           responseBody['message'] ?? 'An unknown error occurred.',
//           snackPosition: SnackPosition.BOTTOM,
//         );
//       }
//     } else {
//       Get.snackbar(
//         'Error',
//         'Failed to login. Status code: ${response.statusCode}. Please try again.',
//         snackPosition: SnackPosition.BOTTOM,
//       );
//     }
//   } catch (e) {
//     Get.snackbar(
//       'Error',
//       'An error occurred during login: $e',
//       snackPosition: SnackPosition.BOTTOM,
//     );
//   } finally {
//     loginController.isLoading.value = false;
//   }
// }
//
// // Placeholder for the processToken function
// Future<void> processToken(String token) async {
//   // Implement token processing logic here
// }
//
// // Placeholder for the routeBasedOnRole function
// void routeBasedOnRole(BuildContext context) {
//   // Implement role-based routing logic here
// }
