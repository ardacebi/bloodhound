import 'package:flutter/material.dart';

class SettingsItemLanguage extends StatefulWidget {
  @override
  _SettingsItemLanguageState createState() => _SettingsItemLanguageState();
}

class _SettingsItemLanguageState extends State<SettingsItemLanguage> {

  int _radioValue1 = -1;
  int correctScore = 0;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        
      }
    });
  }

 @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Language'),
        flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                        Color(0xff585ad6),
                        Color(0xff2c8cb0),
                      ])),
                ),
        ),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              trailing: new Radio(
                groupValue: _radioValue1,
                  value: 0,
                  activeColor: Colors.pink,
                  onChanged: _handleRadioValueChange1),
              title: Text('Device'),
              subtitle: Text('Use device language'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Radio(
                groupValue: _radioValue1,
                  value: 0,
                  activeColor: Colors.pink,
                  onChanged: _handleRadioValueChange1),
              title: Text('English'),
              subtitle: Text('English'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Radio(
                groupValue: _radioValue1,
                  value:1,
                  activeColor: Colors.pink,
                  onChanged: _handleRadioValueChange1),
              title: Text('Türkçe'),
              subtitle: Text('Turkish'),
              onTap: () {},
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}
