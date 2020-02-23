import 'package:flutter/material.dart';

class SettingsItemPrivacy extends StatefulWidget {
  @override
  _SettingsItemPrivacyState createState() => _SettingsItemPrivacyState();
}

class _SettingsItemPrivacyState extends State<SettingsItemPrivacy> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(title: new Text('Privacy')),
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
              title: Text('Private Account'),
              subtitle: Text('When this is on, only approved friends will be able to see your friends and your meetups.'),
              onTap: () {},
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}
