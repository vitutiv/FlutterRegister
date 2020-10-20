import 'package:cadastro_app/widget/areacode_input.dart';
import 'package:cadastro_app/widget/email_input.dart';
import 'package:cadastro_app/widget/phone_input.dart';
import 'package:cadastro_app/widget/name_input.dart';
import 'package:cadastro_app/widget/submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = 'register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Por favor, preencha as informações abaixo',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  nameInput(context),
                  emailInput(context),
                  areaCodeInput(context),
                  phoneNumberInput(context),
                  submitButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
