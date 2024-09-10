import 'package:flutter/material.dart';
import 'package:get/get.dart';

void card_sheet() {
  Get.bottomSheet(Center(
    child: Container(
      height: 500,
      width: 350,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "OOPS !!",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
            ),
          ),
          cmp(),
          const Text(
            "  Your password has been failed to changed",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          const Text("Retry", style: TextStyle(color: Colors.teal)),
          const SizedBox(
            height: 30,
          ),
          button(),
        ],
      ),
    ),
  ));
}

Widget cmp() {
  return Container(
    height: 200,
    decoration: const BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/img4.png')),
    ),
  );
}

Widget button() {
  return SizedBox(
      width: 280,
      height: 40,
      child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ElevatedButton.styleFrom(
              // foregroundColor: Colors.white,
              backgroundColor: Colors.orange,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          child: const Text(
            'Back to Login',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )));
}
