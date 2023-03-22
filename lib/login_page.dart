import 'package:flutter/material.dart';

import 'Pages/home_page.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changeButton = false;
  String value = "";
  final _formkey = GlobalKey<FormState>();
  moveToNext(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        const Duration(seconds: 1),
      );
      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const home_page(),
          ));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset(
              'assets/Images/Login2.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "Username",
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value?.isEmpty ?? false) {
                        return "Username cannot be empty";
                      } else if (value!.length < 6) {
                        return "Password Atlease 6 letters";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () => moveToNext(context),
              child: Material(
                  child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: 40,
                width: changeButton ? 40 : 90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(changeButton ? 40 : 8),
                    color: Colors.teal),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
