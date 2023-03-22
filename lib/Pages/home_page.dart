import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(207, 255, 255, 255),
        backgroundColor: const Color.fromARGB(248, 59, 175, 146),
        title: const Padding(
          padding: EdgeInsets.only(left: 64),
          child: Text(
            "HIFI-SYS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "Project",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
