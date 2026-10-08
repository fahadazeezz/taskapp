import 'package:flutter/material.dart';
import 'package:taskapp/pages/cart_page.dart';
// import 'package:taskapp/pages/dropdownbutton.dart';
// import 'package:taskapp/pages/togglebutton_page.dart';
// import 'package:taskapp/pages/login_page.dart';
// import 'package:taskapp/pages/radio_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CartPage());
  }
}
