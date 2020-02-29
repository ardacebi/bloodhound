import 'package:flutter/material.dart';

class SettingsItemSecurity extends StatefulWidget {
  @override
  _SettingsItemSecurityState createState() => _SettingsItemSecurityState();
}

class _SettingsItemSecurityState extends State<SettingsItemSecurity> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Security'),
        flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                        Color(0xffe9af84),
                        Color(0xffba7e51),
                      ])),
                ),
        ),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            Padding(
            padding: new EdgeInsets.only(top:10.0),
              child: ListTile(
              title: Text('Lockdown Mode'),
              subtitle: Text("If you think your account is in danger or just want to keep it secure, you can disable other devices' access to your account."),
              onTap: () {},
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
