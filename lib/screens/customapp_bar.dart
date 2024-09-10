// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:sizer/sizer.dart';
//
// class CustomAppBar extends StatefulWidget {
//   @override
//   State<CustomAppBar> createState() => _CustomAppBarState();
// }
//
// class _CustomAppBarState extends State<CustomAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Stack(
//           clipBehavior: Clip.none,
//           alignment: Alignment.center,
//           children: [
//             // AppBar background
//             Container(
//               height: 200,
//               // color: Colors.teal,
//               // decoration: BoxDecoration(
//               //     color: Colors.teal,
//               //     borderRadius: BorderRadius.only(
//               //         bottomRight: Radius.circular(22),
//               //         bottomLeft: Radius.circular(22))),
//               child: AppBar(
//                 automaticallyImplyLeading: false,
//                 backgroundColor: Colors.teal,
//                 elevation: 0,
//                 toolbarHeight: 100,
//                 centerTitle: true,
//               ),
//             ),
//             // Profile image that overlaps the bottom of the AppBar
//             Positioned(
//               bottom: -30,
//               child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: AssetImage('assets/images/img.png')),
//             ),
//           ],
//         ),
//         Positioned(
//           top: 50.0,
//           right: 16.0,
//           child: Row(
//             children: [
//               Icon(
//                 Icons.qr_code_scanner,
//               ),
//               SizedBox(width: 5.w),
//               Icon(
//                 Icons.edit,
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatefulWidget {
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 25.h, // Set a reasonable height for the AppBar background
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(23.0),
              bottomLeft: Radius.circular(23.0),
            ),
          ),
        ),
        // Profile image with correct positioning
        Positioned(
          bottom: -3.h, // Adjust this value so the image overlaps the AppBar
          left: (MediaQuery.of(context).size.width / 2) -
              55, // Center the CircleAvatar horizontally
          child: Container(
            padding: EdgeInsets.all(3), // Adjust padding for border thickness
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 4), // White border
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: CircleAvatar(
              radius: 51.0,
              backgroundImage: AssetImage('assets/images/img.png'),
            ),
          ),
        ),

        // Action icons at the top right
        Positioned(
          top: 6.h, // Adjust the top spacing
          right: 1.w, // Adjust the right spacing
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.qr_code_scanner, color: Colors.black),
                onPressed: () {
                  print('QR Code Scanner clicked!');
                },
              ),
              SizedBox(width: 5.w),
              IconButton(
                icon: Icon(Icons.edit, color: Colors.black),
                onPressed: () {
                  print('Edit clicked!');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
