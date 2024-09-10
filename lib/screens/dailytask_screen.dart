import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tech_1/controller/bottom_controller.dart';
import 'package:tech_1/screens/profile_screen.dart';
import 'package:tech_1/screens/scandoc_screen.dart';

class DailytaskScreen extends StatefulWidget {
  DailytaskScreen({super.key});

  @override
  State<DailytaskScreen> createState() => _DailytaskScreenState();
}

class _DailytaskScreenState extends State<DailytaskScreen> {
  final BottomController controller = Get.put(BottomController());

  final List<Widget> pages = [
    DailytaskContent(),
    ProfileScreen(),
    ScandocScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     // title: Center(
      //     //   child: Text(
      //     //     'Welcome, Sanjay!',
      //     //     textAlign: TextAlign.center,
      //     //     style: TextStyle(
      //     //       color: Colors.teal,
      //     //       fontWeight: FontWeight.bold,
      //     //       fontSize: 22,
      //     //     ),
      //     //   ),
      //     // ),
      //     ),
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeIndex,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.scanner),
                label: 'Scan',
              ),
            ],
          )),
    );
  }
}

class DailytaskContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Welcome, Sanjay!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            buildDrawerHeader(),
            Expanded(
              child: buildDrawerList(),
            ),
            buildLogOutButton(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Divider(indent: 10, color: Colors.grey),
            // SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Daily Tasks",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            card(),
            card(),
            SizedBox(height: 0.5.h),
            card(),
            SizedBox(height: 1.h),
            card(),
            SizedBox(height: 2.h),
            icon(),
          ],
        ),
      ),
    );
  }
}

Widget buildDrawerHeader() {
  return Container(
    height: 40.h,
    width: 76.w,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/img6.png"),
        fit: BoxFit.contain,
      ),
    ),
    child: Column(
      children: [
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 35,
            ),
            Image.asset(
              "assets/images/QPE Logo.png",
              width: 20.h,
              height: 20.w,
            ),
          ],
        ),
        SizedBox(height: 2.h),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/img5.jpg"),
          radius: 50,
        ),
        SizedBox(height: 1.h),
        Text(
          "Sneha Singh",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        Text(
          "Scannner",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ],
    ),
  );
}

Widget buildDrawerList() {
  return ListView(
    children: const <Widget>[
      ListTile(
        leading: Icon(
          Icons.home,
          color: Colors.teal,
          size: 35,
        ),
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.scanner,
          color: Colors.teal,
          size: 35,
        ),
        title: Text(
          'Scan Papers',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.list,
          color: Colors.teal,
          size: 35,
        ),
        title: Text(
          'Scanned List',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.feedback,
          color: Colors.teal,
          size: 35,
        ),
        title: Text(
          'Feedback',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: Colors.teal,
          size: 35,
        ),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.help,
          color: Colors.teal,
          size: 35,
        ),
        title: Text(
          'Help',
          style: TextStyle(color: Colors.teal, fontSize: 20),
        ),
      ),
    ],
  );
}

Widget buildLogOutButton() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      constraints: BoxConstraints(
        minWidth: 90.w,
        minHeight: 8.h,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.teal, Colors.white], // Teal to white gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // background transparent
          shadowColor: Colors.transparent, // Remove shadow
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        ),
        icon: Icon(
          Icons.logout,
          color: Colors.white,
          size: 35,
        ),
        label: Text(
          'Log Out',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () {},
      ),
    ),
  );
}

Widget card() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: const BorderSide(color: Colors.teal),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '  School Name:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'D Y Patil, Pune',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '  Exam Name:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '     10 A',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      '  Date:',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      '        28-June-2024',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget icon() {
  return Row(
    children: [
      const Spacer(), // Pushes the CircleAvatar to the end
      CircleAvatar(
        backgroundColor: Colors.teal[100],
        radius: 30,
        child: Icon(
          Icons.attach_file,
          color: Colors.grey,
          size: 25,
        ),
      ),
    ],
  );
}
