import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';
import '../util/util.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String tituloLogin = "Login";
  String nombreApp = "Calle de Oro";
  String lbllogin = "Ingresar";
  String lblresetPass = "¿Olvidaste tu Contraseña?";
  String resetPass = "Reestablecer Contraseña";
  String lblregister = "¿Ya tienes cuenta?";
  String register = "Registrarse";
  String lblEmail = "Email";
  String lblPassword = "Password";
  String lblCopy = "All rights reserved ®";

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              height: 35,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 5.1,
                      //decoration: borderBlack(),
                      child: Text(tituloLogin, style: TextStyle(fontSize: 30)))
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.all(0),
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 5,
                //decoration: borderBlack(),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                      image: ExactAssetImage('assets/img/login.png'),
                    ),
                  ),
                )),
            Container(
              height: 30,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 3.4,
                      //decoration: borderBlack(),
                      child: Text(nombreApp, style: TextStyle(fontSize: 24)))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: lblEmail,
                    filled: true,
                    prefixIcon: Icon(Icons.login)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: lblPassword,
                    filled: true,
                    prefixIcon: Icon(Icons.security)),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.login_sharp,
                      size: 24.0,
                    ),
                    label: Text(lbllogin))),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      //decoration: borderBlack(),
                      child: Text(lblresetPass, style: TextStyle(fontSize: 14)))
                ],
              ),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 2, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.6,
                      //decoration: borderBlack(),
                      child: new InkWell(
                          child: new Text(
                            resetPass,
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () => {}))
                ],
              ),
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 60, 15, 10),
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 3.3,
                      //decoration: borderBlack(),
                      child: Text(lblregister, style: TextStyle(fontSize: 14)))
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
                child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.login_sharp,
                      size: 24.0,
                    ),
                    label: Text(register))),
            Container(
              height: 20,
              margin: const EdgeInsets.fromLTRB(15, 45, 10, 10),
              //padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      //decoration: borderBlack(),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(0),
                              padding: const EdgeInsets.all(0),
                              width: MediaQuery.of(context).size.width / 8.5,
                              child:
                                  Text(lblCopy, style: TextStyle(fontSize: 9)),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.facebook,
                                    color: Colors.blueAccent),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.whatsapp,
                                    color: Color.fromARGB(255, 7, 243, 7)),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.instagram,
                                    color: Color.fromARGB(240, 174, 7, 189)),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: DecoratedIcon(
                                icon: Icon(FontAwesomeIcons.facebookMessenger,
                                    color: Colors.blueAccent),
                                decoration: IconDecoration(
                                  shadows: [
                                    Shadow(blurRadius: 5, offset: Offset(0, 0))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
