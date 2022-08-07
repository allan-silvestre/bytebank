import 'package:flutter/material.dart';
import 'package:bytebank/screens/dashboard.dart';

void main() {
  runApp(ByteBankApp());
  //save(Transaction(500.0, Contact(0, 'guigui', 2000))).then((transaction) => print(transaction));
 // findAll().then((transactions) => print ('new Trasancrions: ${transactions}'));
}

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.greenAccent,
        ),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.green)),
      ),
      home: Dashboard(),
    );
  }
}

