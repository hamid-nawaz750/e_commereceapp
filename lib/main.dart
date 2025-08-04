import 'package:e_commereceapp/modules/Auth_screens/getstarted.dart';
import 'package:e_commereceapp/modules/Dashboard/main_wrapper.dart';
import 'package:e_commereceapp/modules/Dashboard/mian_screen.dart';
import 'package:e_commereceapp/modules/Dashboard/test.dart';
import 'package:e_commereceapp/modules/checkout/checkout.dart';
import 'package:e_commereceapp/modules/review_screens/Produce_review_screen.dart';
import 'package:e_commereceapp/modules/review_screens/add_review.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: MainWrapper(),
      //add  comments
// =======
//       home: Checkout(),
//       //home: Getstarted(),
// >>>>>>> main
      // home: ProduceReviewScreen(),
    );
    ;
  }
}
