import 'package:flutter/material.dart';
import 'menu.page.dart';

class QrcodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text(
          "QRCODE NECESSÁRIO"),
      content: new Text(
          "Escaneie o Qrcode para identificarmos a sua mesa!"),
      actions: <Widget>[
        // define os botões na base do dialogo
        new FlatButton(
          child: new Text("Fechar"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    MenuPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

