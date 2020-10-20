import 'package:cadastro_app/widget/home_image.dart';
import 'package:cadastro_app/widget/register_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID Newsletter'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.blue[800],
              Colors.blue[700],
              Colors.blue[600],
              Colors.blue[400],
            ],
            stops: [
              0.1,
              0.5,
              0.7,
              0.9,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  homeImage(context),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Ainda não possui uma conta?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  registerButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
