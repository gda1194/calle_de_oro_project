import 'package:calle_de_oro_project/pages/login/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../util/util.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String tituloPantalla = "Nueva Contraseña";
String lblPassword = 'Nueva Password';
String lblPassword2 = "Confirmar Password";
String lblsend = "Actualizar";

TextEditingController password = TextEditingController();
TextEditingController password2 = TextEditingController();

class NewPasswordValidated extends StatefulWidget {
  const NewPasswordValidated({Key? key}) : super(key: key);

  @override
  State<NewPasswordValidated> createState() => _NewPasswordValidatedState();
}

class _NewPasswordValidatedState extends State<NewPasswordValidated> {
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
                height: 160,
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
                      prefixIcon: Icon(Icons.password)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: TextField(
                  controller: password2,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: lblPassword2,
                      filled: true,
                      prefixIcon: Icon(Icons.password_sharp)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  child: ElevatedButton.icon(
                      onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login())); },
                      icon: Icon(
                        Icons.update,
                        size: 24.0,
                      ),
                      label: Text(lblsend))),
              SizedBox(
                height: 250,
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
