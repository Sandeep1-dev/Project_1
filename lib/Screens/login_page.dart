import 'package:flutter/material.dart';
import 'package:project_1/Screens/otp_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController countrycode = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countrycode.text = '+91';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/Images/Login2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.teal),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: 40,
                        child: TextField(
                          controller: countrycode,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      const Text(
                        '|',
                        style: TextStyle(fontSize: 33, color: Colors.grey),
                      ),
                      const Expanded(
                          child: TextField(
                              decoration:
                                  InputDecoration(border: InputBorder.none)))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Phone Verification',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "We need to register before you getting started !",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Otp(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9))),
                  child: const Text('Press Button'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
