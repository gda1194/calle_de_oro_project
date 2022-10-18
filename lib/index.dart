import 'package:calle_de_oro_project/pages/ConfigApp.dart';
import 'package:calle_de_oro_project/pages/EnableAccount.dart';
import 'package:calle_de_oro_project/pages/NewAccount.dart';
import 'package:calle_de_oro_project/pages/NewPassword.dart';
import 'package:calle_de_oro_project/pages/ResetPass.dart';
import 'package:calle_de_oro_project/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResetPass(),
    );
  }
}
