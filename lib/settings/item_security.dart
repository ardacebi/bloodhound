import 'package:flutter/material.dart';

class SettingsItemSecurity extends StatefulWidget {
  @override
  _SettingsItemSecurityState createState() => _SettingsItemSecurityState();
}

class _SettingsItemSecurityState extends State<SettingsItemSecurity> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(title: new Text('Security')),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Lockdown Mode'),
              subtitle: Text("If you think your account is in danger or just want to keep it secure, you can disable other devices' access to your account."),
              onTap: () {},
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}
