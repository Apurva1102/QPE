// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sizer/sizer.dart';
//
// import 'dailytask_screen.dart';
//
// class ScandocScreen extends StatefulWidget {
//   @override
//   State<ScandocScreen> createState() => _ScandocScreenState();
// }
//
// class _ScandocScreenState extends State<ScandocScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           //  automaticallyImplyLeading: false,
//           ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Divider(
//                 indent: 10,
//                 color: Colors.grey,
//               ),
//               SizedBox(
//                 height: 1.h,
//               ),
//               Center(
//                 child: Text(
//                   "Welcome, Sanjay!",
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.teal,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 5.h,
//               ),
//               Text(
//                 "Scan Documents",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.school,
//                         color: Colors.grey,
//                       ),
//                       SizedBox(
//                         width: 3.w,
//                       ),
//                       Text(
//                         "Select School Name",
//                         style: TextStyle(color: Colors.grey, fontSize: 20),
//                       ),
//                       SizedBox(
//                         width: 3.w,
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_down_sharp,
//                         color: Colors.grey,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.school,
//                         color: Colors.grey,
//                       ),
//                       SizedBox(
//                         width: 6.w,
//                       ),
//                       Text(
//                         "Select Class",
//                         style: TextStyle(color: Colors.grey, fontSize: 20),
//                       ),
//                       SizedBox(
//                         width: 15.w,
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_down_sharp,
//                         color: Colors.grey,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.school,
//                         color: Colors.grey,
//                       ),
//                       SizedBox(
//                         width: 3.w,
//                       ),
//                       Text(
//                         "Select Sub Class",
//                         style: TextStyle(color: Colors.grey, fontSize: 20),
//                       ),
//                       SizedBox(
//                         width: 10.w,
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_down_sharp,
//                         color: Colors.grey,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.school,
//                         color: Colors.grey,
//                       ),
//                       SizedBox(
//                         width: 3.w,
//                       ),
//                       Text(
//                         "Select Subject",
//                         style: TextStyle(color: Colors.grey, fontSize: 20),
//                       ),
//                       SizedBox(
//                         width: 15.w,
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_down_sharp,
//                         color: Colors.grey,
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 2.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         Icons.school,
//                         color: Colors.grey,
//                       ),
//                       SizedBox(
//                         width: 3.w,
//                       ),
//                       Text(
//                         "Select Roll No",
//                         style: TextStyle(color: Colors.grey, fontSize: 20),
//                       ),
//                       SizedBox(
//                         width: 15.w,
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_down_sharp,
//                         color: Colors.grey,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               SizedBox(
//                   width: 370,
//                   height: 50,
//                   child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                           // foregroundColor: Colors.white,
//                           backgroundColor: Colors.orange,
//                           shape: const RoundedRectangleBorder(
//                               borderRadius: BorderRadius.zero)),
//                       child: const Text(
//                         'Scan Papers',
//                         style: TextStyle(color: Colors.white, fontSize: 20),
//                       ))),
//               SizedBox(
//                 height: 2.h,
//               ),
//               SizedBox(
//                   width: 370,
//                   height: 50,
//                   child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         // foregroundColor: Colors.white,
//                         backgroundColor: Colors.white,
//                         shape: const RoundedRectangleBorder(
//                           borderRadius: BorderRadius.all(Radius.zero),
//                           side: BorderSide(color: Colors.teal, width: 1),
//                         ),
//                       ),
//                       child: const Text(
//                         'Upload File',
//                         style: TextStyle(color: Colors.teal, fontSize: 18),
//                       ))),
//               SizedBox(
//                 height: 2.h,
//               ),
//               icon(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScandocScreen extends StatefulWidget {
  @override
  _ScandocScreenState createState() => _ScandocScreenState();
}

class _ScandocScreenState extends State<ScandocScreen> {
  String? selectedSchoolName;
  String? selectedClass;
  String? selectedSubClass;
  String? selectedSubject;
  String? selectedRollNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                indent: 3,
                color: Colors.grey,
              ),
              SizedBox(
                height: 1.h,
              ),
              Center(
                child: Text(
                  'Welcome, Sanjay!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Scan Documents',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select School Name',
                  prefixIcon: Icon(Icons.school),
                ),
                value: selectedSchoolName,
                items: <String>['School 1', 'School 2', 'School 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSchoolName = newValue;
                  });
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Class',
                  prefixIcon: Icon(Icons.class_outlined),
                ),
                value: selectedClass,
                items: <String>['Class 1', 'Class 2', 'Class 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedClass = newValue;
                  });
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Sub Class',
                  prefixIcon: Icon(Icons.class_outlined),
                ),
                value: selectedSubClass,
                items: <String>['Sub Class 1', 'Sub Class 2', 'Sub Class 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSubClass = newValue;
                  });
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Subject',
                  prefixIcon: Icon(Icons.subject_outlined),
                ),
                value: selectedSubject,
                items: <String>['Subject 1', 'Subject 2', 'Subject 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedSubject = newValue;
                  });
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Select Roll No.',
                  prefixIcon: Icon(Icons.format_list_numbered),
                ),
                value: selectedRollNo,
                items:
                    <String>['Roll 1', 'Roll 2', 'Roll 3'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedRollNo = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                    width: 360,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            // foregroundColor: Colors.white,
                            backgroundColor: Colors.orange,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero)),
                        child: const Text(
                          'Scan Papers',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ))),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: SizedBox(
                    width: 360,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          // backgroundColor: Colors.orange,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                          side: BorderSide(color: Colors.teal, width: 1),
                        ),
                        child: const Text(
                          'Upload File',
                          style: TextStyle(color: Colors.teal, fontSize: 20),
                        ))),
              ),
              SizedBox(
                height: 2.h,
              ),
              icon()
            ],
          ),
        ),
      ),
    );
  }
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
