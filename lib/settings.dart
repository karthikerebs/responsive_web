import 'package:flutter/material.dart';
import 'package:responsive_web/navbar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool emailNotifications = true;
  bool pushNotifications = false;
  bool darkMode = false;
  bool locationServices = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.sizeOf(context).width > 600 ? 600 : 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                const SizedBox(height: 20),
                const ProfileSettings(),
                const SizedBox(height: 40),
                NotificationSettings(
                  emailNotifications: emailNotifications,
                  pushNotifications: pushNotifications,
                  onEmailChanged: (value) {
                    setState(() {
                      emailNotifications = value;
                    });
                  },
                  onPushChanged: (value) {
                    setState(() {
                      pushNotifications = value;
                    });
                  },
                ),
                const SizedBox(height: 40),
                PreferenceSettings(
                  darkMode: darkMode,
                  locationServices: locationServices,
                  onDarkModeChanged: (value) {
                    setState(() {
                      darkMode = value;
                    });
                  },
                  onLocationChanged: (value) {
                    setState(() {
                      locationServices = value;
                    });
                  },
                ),
                const SizedBox(height: 40),
                const AccountSettings(),
                const SizedBox(height: 40),
                const PrivacySettings(),
                const SizedBox(height: 40),
                const LinkedAccounts(),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  child: const Text(
                    'Save Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Profile Settings',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          obscureText: true,
        ),
      ],
    );
  }
}

class NotificationSettings extends StatelessWidget {
  final bool emailNotifications;
  final bool pushNotifications;
  final ValueChanged<bool> onEmailChanged;
  final ValueChanged<bool> onPushChanged;

  const NotificationSettings({
    super.key,
    required this.emailNotifications,
    required this.pushNotifications,
    required this.onEmailChanged,
    required this.onPushChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Notification Settings',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const SizedBox(height: 20),
        SwitchListTile(
          title:
              const Text('Email Notifications', style: TextStyle(fontSize: 18)),
          value: emailNotifications,
          onChanged: onEmailChanged,
        ),
        SwitchListTile(
          title:
              const Text('Push Notifications', style: TextStyle(fontSize: 18)),
          value: pushNotifications,
          onChanged: onPushChanged,
        ),
      ],
    );
  }
}

class PreferenceSettings extends StatelessWidget {
  final bool darkMode;
  final bool locationServices;
  final ValueChanged<bool> onDarkModeChanged;
  final ValueChanged<bool> onLocationChanged;

  const PreferenceSettings({
    super.key,
    required this.darkMode,
    required this.locationServices,
    required this.onDarkModeChanged,
    required this.onLocationChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Preferences',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const SizedBox(height: 20),
        SwitchListTile(
          title: const Text('Dark Mode', style: TextStyle(fontSize: 18)),
          value: darkMode,
          onChanged: onDarkModeChanged,
        ),
        SwitchListTile(
          title:
              const Text('Location Services', style: TextStyle(fontSize: 18)),
          value: locationServices,
          onChanged: onLocationChanged,
        ),
        const SizedBox(height: 20),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Language',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          items: const [
            DropdownMenuItem(value: 'en', child: Text('English')),
            DropdownMenuItem(value: 'es', child: Text('Spanish')),
            DropdownMenuItem(value: 'fr', child: Text('French')),
          ],
          onChanged: (String? value) {},
          value: 'en',
        ),
        const SizedBox(height: 20),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Theme',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
          items: const [
            DropdownMenuItem(value: 'light', child: Text('Light')),
            DropdownMenuItem(value: 'dark', child: Text('Dark')),
          ],
          onChanged: (String? value) {},
          value: 'light',
        ),
      ],
    );
  }
}

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Account Settings',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Account ID',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
      ],
    );
  }
}

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Privacy Settings',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const SizedBox(height: 20),
        SwitchListTile(
          title: const Text('Public Profile', style: TextStyle(fontSize: 18)),
          value: true,
          onChanged: (bool value) {},
        ),
        SwitchListTile(
          title: const Text('Share Activity Status',
              style: TextStyle(fontSize: 18)),
          value: false,
          onChanged: (bool value) {},
        ),
      ],
    );
  }
}

class LinkedAccounts extends StatelessWidget {
  const LinkedAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Linked Accounts',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.link, color: Colors.white),
          label: const Text('Link Google Account',
              style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.link, color: Colors.white),
          label: const Text('Link Facebook Account',
              style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: const EdgeInsets.symmetric(vertical: 16),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
