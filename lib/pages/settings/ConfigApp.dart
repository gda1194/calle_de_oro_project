import 'package:calle_de_oro_project/util/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../util/json/ConfigApp.dart';

class ConfigApp extends StatefulWidget {
  const ConfigApp({Key? key}) : super(key: key);

  @override
  State<ConfigApp> createState() => _ConfigAppState();
}

class _ConfigAppState extends State<ConfigApp> {
  static String titulo = "Configuracion de aplicacion";
  static String subTitulo = "Preferencias";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Container(
      // decoration: borderBlack(),
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(15, 30, 15, 20),
            // decoration: borderBlack(),
            child: Text(
              titulo,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text(
              subTitulo,
              style: TextStyle(fontSize: 12),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(15, 0, 15, 5),
            decoration: borderSeparator(),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // decoration: borderBlack(),
            child: contenidoListView(),
          )
        ],
      ),),
    );
  }

  Widget contenidoListView() {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: List.generate(listaPropeties.length, (index) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          // decoration: borderBlack(),
          child: contenidoRow(
              listaPropeties[index]["leyenda"], listaPropeties[index]["value"]),
        );
      }),
    );
  }

  Widget contenidoRow(String leyenda, bool value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width / 2.1,
            // decoration: borderBlack(),
            child: Text(leyenda, style: TextStyle(fontSize: 16))),
        Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          alignment: Alignment.centerRight,
          width: MediaQuery.of(context).size.width / 5,
          // decoration: borderBlack(),
          // child: Text("d"),
          child: FlutterSwitch(
            width: 50.0,
            height: 22.0,
            // valueFontSize: 25.0,
            // toggleSize: 45.0,
            value: value,
            // borderRadius: 30.0,
            // padding: 8.0,
            // showOnOff: true,
            onToggle: (val) {
              setState(() {
                value = val;
              });
            },
          ),
        )
      ],
    );
  }
}
