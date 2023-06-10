// import 'package:flutter/material.dart';
// import 'package:hiilwalal/Pages/hospital.dart';
// import 'donors.dart';

// class blood extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'HIILWALAL',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         // appBar: AppBar(
//         //   centerTitle: true,
//         //   title: Text(
//         //     'HIILWALAL',
//         //     style: TextStyle(fontSize: 50.0),
//         //   ),
//         // ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => HospitalForm()),
//                   );
//                 },
//                 child: Text(
//                   'HOSPITAL',
//                   style: TextStyle(fontSize: 30.0),
//                 ),
//                 style: ButtonStyle(
//                   minimumSize: MaterialStateProperty.all(Size(250, 80)),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => DonorForm()),
//                   );
//                 },
//                 child: Text(
//                   'Blood Donor',
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 style: ButtonStyle(
//                   minimumSize: MaterialStateProperty.all(Size(250, 80)),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(builder: (context) => DonorForm()),
//                   // );
//                 },
//                 child: Text(
//                   'Blood Seeker',
//                   style: TextStyle(fontSize: 30),
//                 ),
//                 style: ButtonStyle(
//                   minimumSize: MaterialStateProperty.all(Size(250, 80)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hiilwalal/Pages/hospital.dart';
import 'blood_seeker.dart';
import 'donors.dart';

class blood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIILWALAL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            minimumSize: MaterialStateProperty.all(Size(400, 80)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.blue),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonorForm()),
                  );
                },
                child: Text('Blood Donor'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SeekerForm()),
                  );
                },
                child: Text('Blood Seeker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
