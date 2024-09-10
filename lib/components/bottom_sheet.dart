import 'package:flutter/material.dart';
import 'package:get/get.dart';

void bottom_sheet() {
  Get.bottomSheet(Center(
      child: Container(
    height: 500,
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Congratulations !!",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
        ),
        cmp(),
        Text(
          " Yahoo!! You are successfully changed your \n password",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 30,
        ),
        button(),
      ],
    ),
  )));
}

Widget cmp() {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/images/img3.png')),
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
