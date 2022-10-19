import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cardMenu() {
  return Card(
    //color: Color.fromARGB(0, 255, 255, 255),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    elevation: 1,
    child: SizedBox(
      height: 170,
      width: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "Nombre combo",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                height: 80,
                width: 200,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                height: 50,
                width: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 10),
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Detalle",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$0.00",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget cardShop_Cart() {
  return Card(
    //color: Color.fromARGB(0, 255, 255, 255),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    elevation: 1,
    child: SizedBox(
      height: 170,
      width: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "Nombre combo",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                height: 80,
                width: 200,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              SizedBox(
                height: 50,
                width: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 10),
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outline,
                    size: 30,
                  ))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Detalle",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$0.00",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget cardOrders() {
  return Card(
    //color: Color.fromARGB(0, 255, 255, 255),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    elevation: 1,
    child: SizedBox(
      height: 250,
      width: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "N° 123456",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Entregada")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          SizedBox(
              height: 150,
              width: 350,
              child: ListView(
                children: [
                  Text("Combo 1"),
                  Text("Combo 2"),
                  Text("Combo 3"),
                  Text("Combo 4"),
                  Text("Combo 5"),
                  Text("Combo 6"),
                  Text("Combo 7"),
                  Text("Combo 8"),
                  Text("Combo 9"),
                  Text("Combo 10")
                ],
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            " Total: \$0.00",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget cardPay() {
  return Card(
    //color: Color.fromARGB(0, 255, 255, 255),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    elevation: 1,
    child: SizedBox(
      height: 250,
      width: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Orden Detallada",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          SizedBox(
              height: 150,
              width: 350,
              child: ListView(
                children: [
                  Text("Combo 1"),
                  Text("Combo 2"),
                  Text("Combo 3"),
                  Text("Combo 4"),
                  Text("Combo 5"),
                  Text("Combo 6"),
                  Text("Combo 7"),
                  Text("Combo 8"),
                  Text("Combo 9"),
                  Text("Combo 10")
                ],
              )),
          SizedBox(
            height: 5,
          ),
          Text(
            " Total: \$0.00",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
