import 'package:flutter/material.dart';

class SettingsItemLicenses extends StatefulWidget {
  @override
  _SettingsItemLicensesState createState() => _SettingsItemLicensesState();
}

class _SettingsItemLicensesState extends State<SettingsItemLicenses> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Open Source Licenses'),
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
              title: Text('open source lib'),
              subtitle: Text('git link'),
              onTap: () {},
            ),
          ],
        ).toList(),
      ),
    );
  }
}
