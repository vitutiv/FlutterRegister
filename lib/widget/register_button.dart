import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget registerButton(BuildContext context) {
  return RaisedButton(
    onPressed: () {
      Navigator.pushNamed(context, 'register');
    },
    child: Text('Cadastrar'),
    color: Colors.white,
    textColor: Colors.blue,
    disabledColor: Colors.grey,
    disabledTextColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25),
    ),
  );
}
