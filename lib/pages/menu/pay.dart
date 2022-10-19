import 'package:flutter/material.dart';
import 'package:calle_de_oro_project/pages/menu/cards.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        actions: [Icon(Icons.shopping_cart_outlined)],
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
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: const Text('Modificar datos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
              ),
              title: const Text('Cambiar Contraseña'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person_off,
              ),
              title: const Text('Deshabilitar cuenta'),
              onTap: () {
                Navigator.pop(context);
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
                Navigator.pop(context);
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
          cardPay(),
          Divider(height: 20,),
          Text("Seleccione método de pago:"),
          RadioListTile(
              title: Text("Efectivo"),
              value: "Efectivo",
              groupValue: "pay",
              onChanged: (ValueKey) {}),
          RadioListTile(
              title: Text("Tarjeta de Crédito"),
              value: "Tarjeta de Crédito",
              groupValue: "pay",
              onChanged: (ValueKey) {}),
          RadioListTile(
              title: Text("Tarjeta de débito"),
              value: "Tarjeta de débito",
              groupValue: "pay",
              onChanged: (ValueKey) {}),
          RadioListTile(
              title: Text("Bitcoins"),
              value: "Bitcoins",
              groupValue: "pay",
              onChanged: (ValueKey) {}),
              btnAceptar()
        ],
      )),
    );
  }
}

Widget btnAceptar(){
  return ElevatedButton(onPressed: (){}, child: Text("Aceptar"));
}