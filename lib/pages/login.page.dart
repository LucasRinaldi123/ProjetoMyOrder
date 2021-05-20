import 'package:my_order/pages/reset-password.page.dart';
import 'package:my_order/pages/home.page.dart';
import 'package:my_order/pages/signup.page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerEmail = TextEditingController();
    final TextEditingController controllerSenha = TextEditingController();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/LogoEx1.png"),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controllerEmail,
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerSenha,
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16.2,
            ),
            Row(children: <Widget>[
              Container(
                height: 40.0,
                width: 100.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Container(
                      child: Image.asset("assets/fb-icon.png"),
                      height: 25,
                      width: 25,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                width: 16.2,
              ),
              Container(
                height: 40.0,
                width: 100.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Container(
                      child: Image.asset("assets/google.png"),
                      height: 25,
                      width: 25,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                width: 16.2,
              ),
              Container(
                height: 40.0,
                width: 100.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Container(
                      child: Image.asset("assets/apple.png"),
                      height: 25,
                      width: 25,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ]
            ),
            SizedBox(
              height: 50,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Container(
                width: 250,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF44336),
                      Color(0xFFB71C1C),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      final String email = controllerEmail.text;
                      final String senha = controllerSenha.text;
                      if(email == 'admin' && senha == '12345' && email != '' && senha != '') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: new Text("Email ou senha inválidos!"),
                              titleTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              content: new Text("Tente novamente"),
                              contentTextStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text("Fechar"),
                                  onPressed: () {
                                    //Fecha somente o Dialog e mantém dados da página
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
            ]
            ),
            Container(
              height: 45,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Esqueceu sua senha?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black38,
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPasswordPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: SizedBox.expand(
                child: FlatButton(
                  child: Text(
                    "CRIAR CONTA",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}