import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurple,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
        )),
      ),
      home: ListaTransferencias(),
    );
  }
}
