import 'package:cadastro_app/model/user.dart';
import 'package:cadastro_app/widget/home_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = 'welcome';
  @override
  Widget build(BuildContext context) {
    final User args = ModalRoute.of(context).settings.arguments;
    String name = args.name;
    String email = args.email;
    String phone = args.phone;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Seu perfil'),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Bem vindo, $name!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    'Telefone: $phone',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text('E-mail: $email',
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  homeImage(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
