import 'package:calle_de_oro_project/pages/menu/cartShop.dart';
import 'package:calle_de_oro_project/pages/menu/orders.dart';
import 'package:calle_de_oro_project/pages/menu/principal.dart';
import 'package:calle_de_oro_project/pages/settings/ConfigApp.dart';
import 'package:calle_de_oro_project/pages/settings/EnableAccount.dart';
import 'package:calle_de_oro_project/pages/settings/NewAccount.dart';
import 'package:calle_de_oro_project/pages/settings/NewPassword.dart';
import 'package:calle_de_oro_project/pages/settings/UpdateData.dart';
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
      body: CartShop(),
    );
  }
}
