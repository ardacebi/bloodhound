import 'package:flutter/material.dart';

class SettingsItemPersonalization extends StatefulWidget {
  @override
  _SettingsItemPersonalizationState createState() =>
      _SettingsItemPersonalizationState();
}

class _SettingsItemPersonalizationState
    extends State<SettingsItemPersonalization> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Personalization')),
      body: new ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('App theme'),
              subtitle: Text(
                  'Change your app theme.'),
                  trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                _settingModalBottomSheetTheme(context);
              },
            ),
            ListTile(
              title: Text('App icon'),
              subtitle: Text('Change your app icon.'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                _settingModalBottomSheetIcon(context);
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}

void _settingModalBottomSheetTheme(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  leading: new Icon(Icons.brightness_auto),
                  title: new Text('System'),
                  subtitle:
                      new Text("Automatically adapt to your system theme."),
                  onTap: () => {}),
              new ListTile(
                leading: new Icon(Icons.brightness_low),
                title: new Text('Dark'),
                subtitle: new Text("Always set to Dark."),
                onTap: () => {},
              ),
              new ListTile(
                leading: new Icon(Icons.brightness_high),
                title: new Text('Light'),
                subtitle: new Text("Always set to Light."),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}

void _settingModalBottomSheetIcon(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child: new Wrap(
            children: <Widget>[
              new ListTile(
                  title: new Text('Classic'),
                  subtitle: new Text("The classic bloodhound icon."),
                  onTap: () => {}),
              new ListTile(
                title: new Text("Auto"),
                subtitle: new Text("Adapt to your theme settings for the app icon."),
                onTap: () => {},
              ),
              new ListTile(
                title: new Text('Dark Side'),
                subtitle: new Text("Dark version of the logo."),
                onTap: () => {},
              ),
              new ListTile(
                title: new Text('Light Side'),
                subtitle: new Text("Light version of the logo."),
                onTap: () => {},
              ),
            ],
          ),
        );
      });
}
