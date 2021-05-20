import 'package:my_order/pages/login.page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerNome = TextEditingController();
    final TextEditingController controllerEmail = TextEditingController();
    final TextEditingController controllerSenha = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 170,
              height: 170,
              child: Image.asset("assets/LogoEx1.png"),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: controllerNome,
              // autofocus: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                icon: new Icon(Icons.account_circle, color: Colors.black38),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: "Nome",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controllerEmail,
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: new Icon(Icons.mail, color: Colors.black38),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
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
                icon: new Icon(Icons.lock, color: Colors.black38),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
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
                      "CADASTRAR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      final String nome = controllerNome.text;
                      final String email = controllerEmail.text;
                      final String senha = controllerSenha.text;
                      if(nome!= '' && email != '' && senha != '') {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // retorna um objeto do tipo Dialog
                            return AlertDialog(
                              title: new Text("CONTA CADASTRADA COM SUCESSO!"),
                              titleTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              content: new Text("Seja bem-vindo"),
                              contentTextStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                              actions: <Widget>[
                                // define os botões na base do dialogo
                                new FlatButton(
                                  child: new Text("Fechar"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginPage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                      else{
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: new Text("Algo deu errado"),
                              titleTextStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              content: new Text("Preencha todos os campos"),
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
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
