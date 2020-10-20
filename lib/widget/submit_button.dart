import 'package:cadastro_app/model/user.dart';
import 'package:cadastro_app/screen/welcome_page.dart';

import '../src/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget submitButton(BuildContext context) {
  final registerBloc = Provider.of<RegisterBloc>(context);
  return StreamBuilder(
    stream: registerBloc.submitButtonIsValid,
    builder: (context, snapshot) {
      return RaisedButton(
        onPressed: snapshot.hasData
            ? () {
                User user = registerBloc.submitRegistration();
                Navigator.pushNamed(
                  context,
                  WelcomePage.routeName,
                  arguments: User(user.name, user.email, user.phone),
                );
              }
            : null,
        child: Text('Registrar'),
        color: Colors.blue,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      );
    },
  );
}
