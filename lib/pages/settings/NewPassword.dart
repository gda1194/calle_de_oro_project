import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  static String titulo = "Nueva contraseña";

  String lblContraseaActual = "Contraseña actual";
  String lblContraseaNueva = "Nueva contraseña";
  String lblContraseaConfirmar = "Confirmar contraseña";

  TextEditingController actualPass = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController newPassConfirmation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: borderBlack(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(15, 30, 15, 10),
                // decoration: borderBlack(),
                child: Text(
                  titulo,
                  style: TextStyle(fontSize: 24),
                ),
              ),
              //CONTAINTER LABEL
              Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Text(lblContraseaActual),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: TextField(
                  controller: actualPass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: lblContraseaActual,
                  ),
                ),
              ),
              //CONTAINTER LABEL
              Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Text(lblContraseaNueva),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: newPass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: lblContraseaNueva,
                  ),
                ),
              ),
              //CONTAINTER LABEL
              Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Text(lblContraseaConfirmar),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: newPass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: lblContraseaConfirmar,
                  ),
                ),
              ),
              Container(
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: ElevatedButton(
                    child: const Text('ACTUALIZAR CONTRASEÑA'),
                    onPressed: () {
                     Navigator.pop(context);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
