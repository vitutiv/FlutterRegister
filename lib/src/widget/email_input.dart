import '../bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget emailInput(BuildContext context) {
  final registerBloc = Provider.of<RegisterBloc>(context);
  return StreamBuilder<Object>(
    stream: registerBloc.email,
    builder: (context, snapshot) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Digite o seu e-mail',
            labelText: 'E-mail',
            errorText: snapshot.error,
          ),
          onChanged: registerBloc.emailChanges,
        ),
      );
    },
  );
}
