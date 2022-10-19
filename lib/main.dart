import 'package:calle_de_oro_project/index.dart';
import 'package:calle_de_oro_project/pages/menu/cartShop.dart';
import 'package:calle_de_oro_project/pages/menu/orders.dart';
import 'package:calle_de_oro_project/pages/menu/pay.dart';
import 'package:calle_de_oro_project/pages/menu/principal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Pay(),
    );
  }
}