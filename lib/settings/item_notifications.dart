import 'package:flutter/material.dart';

class SettingsItemNotifications extends StatefulWidget {
  @override
  _SettingsItemNotificationsState createState() => _SettingsItemNotificationsState();
}

class _SettingsItemNotificationsState extends State<SettingsItemNotifications> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Notifications'),
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
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Push Notifications', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('Master switch to all notifications.'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Comments and meetups mentioning you'),
              subtitle: Text('@arda mentioned you in a meetup'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Friend requests'),
              subtitle: Text('@arda sent you a friend request'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('New followers'),
              subtitle: Text('@arda started following you'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Accepted follow requests'),
              subtitle: Text('@arda accepted your following request'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Meetup planning groups'),
              subtitle: Text("@arda added you to a meetup group"),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Support requests'),
              subtitle: Text('Your support request from 23.02 was updated'),
              onTap: () {},
            ),
            ListTile(
              trailing: new Switch(
                  value: true,
                  activeColor: Colors.pink,
                  activeTrackColor: Colors.pinkAccent,
                  onChanged: (value) {
                    setState(() {});
                  }),
              title: Text('Bloodhound notifications'),
              subtitle: Text('New update! Make sure to try out this'),
              onTap: () {},
            ),
            
          ],
        ).toList(),
      ),
    );
  }
}
