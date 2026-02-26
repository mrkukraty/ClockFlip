import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Theme'),
              trailing: DropdownButton<String>(
                items: <String>['Light', 'Dark'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Handle theme change
                },
              ),
            ),
            ListTile(
              title: Text('Notifications'),
              trailing: Switch(
                value: true,
                onChanged: (bool value) {
                  // Handle notification toggle
                },
              ),
            ),
            // Additional settings can be added here
          ],
        ),
      ),
    );
  }
}