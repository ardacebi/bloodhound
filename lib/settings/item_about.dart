import 'package:bloodhound/settings/item_licenses.dart';
import 'package:flutter/material.dart';

class SettingsItemAbout extends StatefulWidget {
  @override
  _SettingsItemAboutState createState() => _SettingsItemAboutState();
}

class _SettingsItemAboutState extends State<SettingsItemAbout> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About Bloodhound'),
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
            ListTile(
              title: Text('App version'),
              subtitle: Text('1.0.0-beta.1 (1)'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Open Source Licenses'),
              subtitle: Text('See open source licenses used in this application'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {navigateToLicensesSection(context);},
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}

Future navigateToLicensesSection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => (SettingsItemLicenses())));
}