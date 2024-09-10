import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.brown, Colors.teal, Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            accountName: Text(
              "Sneha Singh",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("Scanner"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/profile_image.jpg'), // Replace with your image path
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.teal),
            title: Text("Dashboard"),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.document_scanner, color: Colors.teal),
            title: Text("Scan Papers"),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt, color: Colors.teal),
            title: Text("Scanned List"),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback, color: Colors.teal),
            title: Text("Feedback"),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.teal),
            title: Text("Setting"),
            onTap: () {
              // Handle the tap
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.teal),
            title: Text("Help"),
            onTap: () {
              // Handle the tap
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                backgroundColor: Colors.teal.withOpacity(0.8), // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              icon: Icon(Icons.logout),
              label: Text("Log Out"),
              onPressed: () {
                // Handle logout
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Drawer"),
        ),
        drawer: CustomDrawer(),
        body: Center(
          child: Text("Main content"),
        ),
      ),
    );
  }
}
