import 'package:flutter/material.dart';

class SettingsItemPrivacy extends StatefulWidget {
  @override
  _SettingsItemPrivacyState createState() => _SettingsItemPrivacyState();
}

class _SettingsItemPrivacyState extends State<SettingsItemPrivacy> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Privacy'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color(0xffe9af84),
              Color(0xffba7e51),
            ])
          ),
       ),    
        ),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            Padding(
              padding: new EdgeInsets.only(top:10.0),
              child:ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Private Account'),
              subtitle: Text('When enabled, only approved friends will be able to see your friends and your meetups.'),
              onTap: () {},
            ),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
