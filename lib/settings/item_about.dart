import 'package:flutter/material.dart';

class SettingsItemAbout extends StatefulWidget {
  @override
  _SettingsItemAboutState createState() => _SettingsItemAboutState();
}

class _SettingsItemAboutState extends State<SettingsItemAbout> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(title: new Text('About Bloodhound')),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('App version'),
              subtitle: Text('1.0.0-beta.1 (1)'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Open Source Licenses'),
              subtitle: Text('See open source licenses used in this application.'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}
