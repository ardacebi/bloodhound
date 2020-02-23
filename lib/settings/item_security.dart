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
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Account Privacy'),
              subtitle: Text('When your account privacy is on, only approved friends will be able to see your friends and your meetups.'),
              onTap: () {},
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}
