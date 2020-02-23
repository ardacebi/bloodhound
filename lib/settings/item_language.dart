import 'package:flutter/material.dart';

class SettingsItemLanguage extends StatefulWidget {
  @override
  _SettingsItemLanguageState createState() => _SettingsItemLanguageState();
}

class _SettingsItemLanguageState extends State<SettingsItemLanguage> {

  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        
      }
    });
  }

 @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(title: new Text('Language')),
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
