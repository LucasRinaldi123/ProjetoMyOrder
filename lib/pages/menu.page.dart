import 'package:flutter/material.dart';
import 'order.page.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.qr_code), onPressed: () {}),
        ],
        title: Text(
          "PIZZARIA X",
          style: TextStyle(fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 30, right: 30),
        color: Colors.white,
        child: ListView(children: <Widget>[
          Text(
            "PIZZAS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
          Row(children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: RaisedButton(
                  child: const Text('MUSSARELA'),
                  color: Colors.white,
                  elevation: 4.0,
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 16.2,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: RaisedButton(
                  child: const Text('FRANGO'),
                  color: Colors.white,
                  elevation: 4.0,
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 16.2,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: RaisedButton(
                  child: const Text('CALABRESA'),
                  color: Colors.white,
                  elevation: 4.0,
                  onPressed: () {}
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Text(
            "BEBIDAS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: RaisedButton(
                  child: const Text('COCA-COLA'),
                  color: Colors.white,
                  elevation: 4.0,
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              width: 16.2,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: RaisedButton(
                  child: const Text('GUARANÁ'),
                  color: Colors.white,
                  elevation: 4.0,
                  onPressed: () {},
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 30,
          ),
          Text(
            "SOBREMESAS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox.expand(
                child: RaisedButton(
                  child: const Text('SORVETE'),
                  color: Colors.white,
                  elevation: 4.0,
                  onPressed: () {},
                ),
              ),
            ),
          ]),
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
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: Icon(
            Icons.notes,
            color: Colors.white,
          )),
    );
  }
}
