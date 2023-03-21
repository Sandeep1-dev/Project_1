import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(207, 206, 71, 145),
        backgroundColor: const Color.fromARGB(248, 59, 175, 146),
        title: const Text(
          "Casino App",
          textAlign: TextAlign.center,
        ),
      ),
      body: const Center(
        child: Text("Project"),
      ),
      drawer: const Drawer(),
    );
  }
}
