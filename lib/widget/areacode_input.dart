import 'package:cadastro_app/src/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

Widget areaCodeInput(BuildContext context) {
  final registerBloc = Provider.of<RegisterBloc>(context);
  return StreamBuilder<Object>(
    stream: registerBloc.areaCode,
    builder: (context, snapshot) {
      return Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Digite o seu DDD',
            labelText: 'DDD',
            errorText: snapshot.error,
          ),
          onChanged: registerBloc.areaCodeChanges,
          keyboardType: TextInputType.number,
          maxLength: 2,
        ),
      );
    },
  );
}
