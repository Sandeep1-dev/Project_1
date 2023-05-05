import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/Wigets/drawer.dart';

class home_page extends StatelessWidget {
  home_page({super.key});

  @override
  var arrName = [
    'sandeep',
    'Tannu',
    'Rahul',
    'Vinod',
    'Ravi',
    'Shubham',
    'Shivam',
    'rahim',
    'Kabir',
    'Kanhaiya'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(207, 255, 255, 255),
        backgroundColor: Colors.teal,
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
      body: Card(
        elevation: 1,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://images5.alphacoders.com/481/481903.png"),
              ),
              title: Text(
                arrName[index],
              ),
              subtitle: Text('Number'),
              trailing: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.add_a_photo_rounded))
            );
          },
          itemCount: arrName.length,
        ),
      ),
      drawer: const ModeDrawer(),
    );
  }
}
