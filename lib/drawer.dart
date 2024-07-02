import 'package:flutter/material.dart';
import 'package:responsive_web/dashboard.dart';
import 'package:responsive_web/loginscreen.dart';
import 'package:responsive_web/settings.dart';
import 'package:responsive_web/signup.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Text(
              'Admin Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard, color: Colors.blueGrey),
            title: const Text('Dashboard', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminDashboard()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shop, color: Colors.blueGrey),
            title: const Text('Login', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.blueGrey),
            title: const Text('Signup', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Signup()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.blueGrey),
            title: const Text('Settings', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsPage()));
            },
          ),
        ],
      ),
    );
  }
}
