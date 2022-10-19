import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../util/util.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'NewPasswordValidated.dart';

  String tituloPantalla = "Recuperar Contraseña";
  String lblEmail = 'Codigo de verificacion';
  String lblsend = "Validar";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
class ResetPassCode extends StatefulWidget {
  const ResetPassCode({Key? key}) : super(key: key);

  @override
  State<ResetPassCode> createState() => _ResetPassCodeState();
}

class _ResetPassCodeState extends State<ResetPassCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Container(
                height: 35,
                margin: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(0),
                        padding: const EdgeInsets.all(0),
                        width: MediaQuery.of(context).size.width / 1.6,
                        //decoration: borderBlack(),
                        child: Text(tituloPantalla,
                            style: TextStyle(fontSize: 25)))
                  ],
                ),
              ),
              SizedBox(
                height: 220,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: lblEmail,
                      filled: true,
                      prefixIcon: Icon(Icons.qr_code_2)),
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  child: ElevatedButton.icon(
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const NewPasswordValidated())); },
                      icon: Icon(
                        Icons.send_to_mobile,
                        size: 24.0,
                      ),
                      label: Text(lblsend))),
              SizedBox(
                height: 280,
              ),
              Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width / 5,
                  //decoration: borderBlack(),
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                        image: ExactAssetImage('assets/img/login.png'),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
