import 'package:flutter/material.dart';
import 'package:project_1/Screens/login_page.dart';
import 'package:project_1/Screens/otp_page.dart';

void main(List<String> args) {
  runApp(const project());
}

class project extends StatelessWidget {
  const project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Montserrat',
      ),
      initialRoute: 'Login',
      routes: {
        'phone': (context) =>  Login(),
        'Otp': (context) => const Otp()
      },
    );
  }
}
