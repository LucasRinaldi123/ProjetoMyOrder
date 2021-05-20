import 'package:flutter/material.dart';
import 'package:my_order/pages/qrcode.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        title: Text(
          "MyOrder",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        color: Colors.white,
        child: ListView(children: <Widget>[
          Text(
            "RESTAURANTES ABERTOS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            child: const Text('PIZZARIA X'),
            color: Colors.white,
            elevation: 4.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QrcodePage(),
                ),
              );
            },
          ),
          RaisedButton(
            child: const Text('HAMBURGUERIA X'),
            color: Colors.white,
            elevation: 4.0,
            onPressed: () {
              // faz alguma coisa
            },
          ),
          RaisedButton(
            child: const Text('SUSHI X'),
            color: Colors.white,
            elevation: 4.0,
            onPressed: () {
              // faz alguma coisa
            },
          ),
          RaisedButton(
            child: const Text('ROTICERIA X'),
            color: Colors.white,
            elevation: 4.0,
            onPressed: () {
              // faz alguma coisa
            },
          ),
          RaisedButton(
            child: const Text('CHURRASCARIA X'),
            color: Colors.white,
            elevation: 4.0,
            onPressed: () {
              // faz alguma coisa
            },
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            title: Text('Cardápio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            title: Text('Pedidos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
        ],
      ),
    );
  }
}
