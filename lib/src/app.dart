import 'package:cadastro_app/src/screen/home_page.dart';
import 'package:cadastro_app/src/screen/register_page.dart';
import 'package:cadastro_app/src/screen/welcome_page.dart';
import 'package:cadastro_app/src/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'R+',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        routes: {
          WelcomePage.routeName: (context) => WelcomePage(),
          RegisterPage.routeName: (context) => MultiProvider(
                providers: [
                  Provider.value(
                    value: RegisterBloc(),
                  ),
                ],
                child: RegisterPage(),
              ),
        });
  }
}
