import 'package:flutter/material.dart';
import 'package:skills_testing_project/pages/productsPage.dart';

import 'pages/addressPage.dart';
import 'pages/paymentPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: paymentPage());
  }
}
