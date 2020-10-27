import '../bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget phoneNumberInput(BuildContext context) {
  final registerBloc = Provider.of<RegisterBloc>(context);
  return StreamBuilder<Object>(
    stream: registerBloc.phoneNumber,
    builder: (context, snapshot) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Digite o seu número de telefone',
            labelText: 'Número de telefone',
            errorText: snapshot.error,
          ),
          onChanged: registerBloc.phoneNumberChanges,
          keyboardType: TextInputType.number,
          maxLength: 9,
        ),
      );
    },
  );
}
