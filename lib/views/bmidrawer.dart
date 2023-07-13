import 'package:flutter/material.dart';

class BmiDrawer extends StatelessWidget {
  const BmiDrawer({super.key, weight, height, age, gender});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Bonobono'),
            accountEmail: Text('bono@naver.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/user.png'),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 76, 175, 80),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.blue,
            ),
            title: const Text('App Settings'),
            onTap: () {
              Navigator.pop(context);
              snackBarFunction(context, 'App Settings', Colors.red);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.language,
              color: Colors.red,
            ),
            title: const Text('Language'),
            onTap: () {
              Navigator.pop(context);
              snackBarFunction(context, 'Language', Colors.red);
            },
          ),
        ],
      ),
    );
  }

  snackBarFunction(BuildContext context, String direction, Color color){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$direction is Not Supported'),
        duration: const Duration(seconds: 2),
        backgroundColor: color,
      ),
    );
  }
}
