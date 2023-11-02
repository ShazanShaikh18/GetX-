// Route Navigation for Un-named Routes using GetX Library(With Class Name)

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:badges/badges.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'GetX in Flutter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const FirstScreen(),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('First Screen'),
//         backgroundColor: Colors.teal,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Press below button for navigate to next screen!',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//             ),
//             const Text(
//               '⬇',
//               style: TextStyle(fontSize: 40),
//             ),
//             const SizedBox(height: 40),
//             Container(
//               height: 50,
//               width: 350,
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(50)),
//               child: ElevatedButton(
//                 onPressed: () async {
//                   Get.to(const SecondScreen(),
//                       fullscreenDialog: true,
//                       curve: Curves.slowMiddle,
//                       duration: const Duration(seconds: 1),
//                       transition: Transition.circularReveal);

//                   // Go to SecondScreen but no option to return to previous screen
//                   // Get.off(SecondScreen());

//                   // Go to SecondScreen and cancel all previous screens/routes
//                   // Get.offAll(SecondScreen());

//                   // Go the next screen with some data
//                   // Get.to(SecondScreen(), arguments: 'Data from First Screen');

//                   // Go to next screen and receive data sent from SecondScreen
//                   // var data = await Get.to(const SecondScreen());
//                   // print("The Received data is: $data");
//                 },
//                 child: const Text(
//                   'Go To Next Screen',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Second Screen'),
//         backgroundColor: Colors.teal.shade700,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Get.snackbar('Shazan', 'Flutter Developer',
//                     titleText: const Text(
//                       'Shazan',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     messageText: const Text(
//                       'Flutter Developer',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     shouldIconPulse: true,
//                     backgroundGradient: LinearGradient(
//                         colors: [Colors.teal.shade500, Colors.cyan]),
//                     snackPosition: SnackPosition.BOTTOM,
//                     backgroundColor: Colors.black54,
//                     borderWidth: 2,
//                     borderColor: Colors.black,
//                     animationDuration: const Duration(seconds: 1),
//                     icon: const Icon(Icons.person, color: Colors.white),
//                     duration: const Duration(seconds: 2),
//                     margin: const EdgeInsets.all(10),
//                     isDismissible: true,
//                     dismissDirection: DismissDirection.horizontal,
//                     onTap: (snack) {
//                   print('Hello Shazan');
//                 },
//                     overlayBlur: 2,
//                     mainButton: TextButton(
//                         style: const ButtonStyle(
//                             backgroundColor:
//                                 MaterialStatePropertyAll(Colors.white70),
//                             minimumSize:
//                                 MaterialStatePropertyAll(Size(30, 30))),
//                         onPressed: () {},
//                         child: const Center(
//                           child: Text(
//                             'Done',
//                             style: TextStyle(
//                               color: Colors.black,
//                             ),
//                           ),
//                         )),
//                     forwardAnimationCurve: Curves.bounceInOut,
//                     reverseAnimationCurve: Curves.bounceInOut);

//                 Get.defaultDialog(
//                     middleText:
//                         'Hello Friends, I am a Flutter Developer in Emlargesoft It Hub',
//                     textCancel: 'Cancel',
//                     textConfirm: 'Confirm',
//                     titleStyle: const TextStyle(fontWeight: FontWeight.bold),
//                     barrierDismissible: false,
//                     onCancel: () {
//                       Get.back();
//                     },
//                     content: const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Flutter Developer'),
//                         Divider(),
//                         Text('Php Developer'),
//                         Divider(),
//                         Text('Laravel Developer'),
//                         Divider(),
//                         Text('React Native Developer')
//                       ],
//                     ));
//               },
//               child: Container(
//                 height: 50,
//                 width: 200,
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: const Center(
//                   child: Text(
//                     'Show Dialog',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 100),
//             GestureDetector(
//               onTap: () {
//                 Get.bottomSheet(
//                   Container(
//                     height: 200,
//                     color: Colors.teal.shade200,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       child: Column(
//                         children: [
//                           ListTile(
//                             leading: const Icon(Icons.wb_sunny_outlined,
//                                 color: Colors.black),
//                             title: const Text(
//                               'Light Theme',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             onTap: () {
//                               Get.changeTheme(ThemeData.light());
//                             },
//                           ),
//                           ListTile(
//                             leading: const Icon(
//                               Icons.wb_sunny,
//                               color: Colors.black,
//                             ),
//                             title: const Text(
//                               'Dark Mode',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             onTap: () {
//                               Get.changeTheme(ThemeData.dark());
//                             },
//                           )
//                           // Text('Flutter', textScaleFactor: 2),
//                           // Text('React Native', textScaleFactor: 2),
//                           // Text(
//                           //   'JavaScript',
//                           //   textScaleFactor: 2,
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   isDismissible: true,
//                   enterBottomSheetDuration: const Duration(seconds: 1),
//                   exitBottomSheetDuration: const Duration(milliseconds: 500),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                       side: const BorderSide(color: Colors.white, width: 2)),
//                 );
//               },
//               child: Container(
//                 height: 50,
//                 width: 250,
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: const Center(
//                   child: Text(
//                     'Show Bottom Sheet',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 100),
//             GestureDetector(
//               onTap: () {
//                 // Get.back();

//                 // Send data to previous screen must use result as name
//                 Get.back(result: "This is from Second Screen");
//               },
//               child: Container(
//                 height: 50,
//                 width: 290,
//                 decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(15)),
//                 child: const Center(
//                   child: Text(
//                     'Back To Previous Screen',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),

//             // this is use when Get.to(SecondScreen(), arguments: "Data from First Screen");
//             // Text('${Get.arguments}',
//             //     style: const TextStyle(
//             //         fontSize: 20,
//             //         fontWeight: FontWeight.bold,
//             //         color: Colors.teal)),
//           ],
//         ),
//       ),
//     );
//   }
// }
