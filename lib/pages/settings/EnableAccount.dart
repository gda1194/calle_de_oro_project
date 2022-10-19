import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../util/util.dart';

class EnableAccount extends StatefulWidget {
  const EnableAccount({Key? key}) : super(key: key);

  @override
  State<EnableAccount> createState() => _EnableAccountState();
}

class _EnableAccountState extends State<EnableAccount> {
  static String titulo = "Deshabilitar cuenta";
  static String subTitulo = "Estado";
  bool isEstadoCuenta = true;
  String leyendaEstadoCuenta = "Activa";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              // child: contenidoListView(),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.1,
                      // decoration: borderBlack(),
                      child: Text(leyendaEstadoCuenta,
                          style: TextStyle(fontSize: 16))),
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
                      value: isEstadoCuenta,
                      // borderRadius: 30.0,
                      // padding: 8.0,
                      // showOnOff: true,
                      onToggle: (val) {
                        setState(() {
                          isEstadoCuenta = val;
                          if (isEstadoCuenta) {
                            leyendaEstadoCuenta = "Activa";
                          } else {
                            leyendaEstadoCuenta = "Inactiva";
                          }
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
