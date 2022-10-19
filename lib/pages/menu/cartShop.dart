import 'package:calle_de_oro_project/pages/menu/pay.dart';
import 'package:flutter/material.dart';
import 'package:calle_de_oro_project/pages/menu/cards.dart';

import '../settings/ConfigApp.dart';
import '../settings/EnableAccount.dart';
import '../settings/NewPassword.dart';
import '../settings/UpdateData.dart';
import 'orders.dart';

class CartShop extends StatefulWidget {
  const CartShop({super.key});

  @override
  State<CartShop> createState() => _CartShopState();
}

class _CartShopState extends State<CartShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: <Widget> [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const  CartShop()));
        }, icon: Icon(Icons.shopping_cart_outlined))],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Column(children: [
              const SizedBox(
                width: 1000,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Bienvenido:'),
                ),
              ),
            ]),
            ListTile(
              leading: Icon(
                Icons.format_list_numbered,
              ),
              title: const Text('Historial de Pedidos'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Orders()));
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: const Text('Modificar datos'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateData()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
              ),
              title: const Text('Cambiar Contraseña'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NewPassword()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_off,
              ),
              title: const Text('Deshabilitar cuenta'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EnableAccount()));
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: const Text('Preferencias'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ConfigApp()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: const Text('Cerrar Sessión'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
          child: ListView(
        children: <Widget>[
          cardShop_Cart(),
          cardShop_Cart(),
          cardShop_Cart(),
          btnAceptar(context)
        ],
      )),
    );
  }
}

Widget btnAceptar(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Pay()));
      },
      child: Text("Aceptar"));
}
