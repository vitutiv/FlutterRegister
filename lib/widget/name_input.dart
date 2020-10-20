import 'package:cadastro_app/src/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget nameInput(BuildContext context) {
  final registerBloc = Provider.of<RegisterBloc>(context);
  return StreamBuilder<Object>(
    stream: registerBloc.name,
    builder: (context, snapshot) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Digite o seu nome',
            labelText: 'Nome',
            errorText: snapshot.error,
          ),
          onChanged: registerBloc.nameChanges,
        ),
      );
    },
  );
}
