import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModeDrawer extends StatelessWidget {
  const ModeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: Container(
        color: Colors.teal,
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80"),
                  ),
                  accountName: Text("Hifisys"),
                  accountEmail: Text("Hifisys@gmail.com"),
                )),
            ListTile(
              onTap: () {
                print('hello');
              },
              leading: const Icon(CupertinoIcons.home),
              iconColor: Colors.cyanAccent,
              title: const Text(
                "Home",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.mail_solid),
              iconColor: Colors.cyanAccent,
              title: Text(
                "Email-Me",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              iconColor: Colors.cyanAccent,
              title: Text(
                "About",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
