import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_1/screens/dailytask_screen.dart';
import 'customapp_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sanjay Patel",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Scanner",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            info(),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
                width: 370,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        // foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                    child: const Text(
                      'Sign Out',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                      side: BorderSide(color: Colors.teal, width: 1),
                    ),
                  ),
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.teal, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

Widget info() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '  Date of Birth:',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'DD/MM/YY',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ],
      ),
      SizedBox(
        height: 2.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '  Username:',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            ' Username',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ],
      ),
      SizedBox(
        height: 2.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '  Scanner Id',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            '  Scanner Id:',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ],
      ),
      SizedBox(
        height: 2.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' Contact No:',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            '  91XXXXXXXX0',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ],
      ),
      SizedBox(
        height: 2.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' Organization:',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            '  Educational',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        ],
      ),
    ],
  );
}
