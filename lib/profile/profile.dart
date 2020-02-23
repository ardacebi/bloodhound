import 'package:flutter/material.dart';
import 'package:bloodhound/profile/edit_profile.dart';
import 'package:bloodhound/schedule/event_details.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:bloodhound/settings/settings.dart';
import 'package:bloodhound/notifications/notifications.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl =
        'https://scontent-atl3-1.cdninstagram.com/v/t51.2885-19/79807139_780619172452888_7800524258739748864_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com&_nc_ohc=jpxKFXBam5MAX-ZQ7bM&oh=0aed6910f023e71648653e821030b577&oe=5E807DBB';

    return new Stack(
      children: <Widget>[
        new Container(
            /* alignment: FractionalOffset.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
              ),
            ],
          ), */
            ),
        new Scaffold(
            appBar: new AppBar(title: new Text('Profile'), actions: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                tooltip: "Notifications",
                onPressed: () {
                  navigateToNotificationsPage(context);
                },
              ),
              PopupMenuButton(
                onSelected: (result) {
                  if (result == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  }
                  if (result == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SendFeedbackPage()),
                    );
                  }
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  const PopupMenuItem(
                    child: Text('Settings'),
                    value: 0,
                  ),
                  const PopupMenuItem(
                    child: Text('Send feedback'),
                    value: 1,
                  ),
                ],
              )
            ]),
            backgroundColor: Colors.transparent,
            body: new SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    height: _height / 25,
                  ),
                  new CircleAvatar(
                    radius: _width < _height ? _width / 7 : _height / 4,
                    backgroundImage: NetworkImage(imgUrl),
                  ),
                  new SizedBox(
                    height: _height / 50.0,
                  ),
                  new Text(
                    'Arda Çebi',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: _width / 15,
                        ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 5.0),
                    child: new Text(
                      '@arda',
                      style: new TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _width / 25,
                          color: Colors.grey),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 70,
                        left: _width / 15,
                        right: _width / 15),
                    child: new Text(
                      'co-founder @ bloodhound, student, photographer, coder and many more',
                      style: new TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _width / 25,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        left: _width / 8, right: _width / 8),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, top: 15.0),
                            child: new RaisedButton(
                              child: new Text(
                                "Edit Profile",
                                style: TextStyle(color: Colors.black),
                              ),
                              color: Theme.of(context).accentColor,
                              onPressed: () {
                                navigateToEditPage(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Divider(
                    height: _height / 20,
                    color: Colors.grey,
                  ),
                  new Row(
                    children: <Widget>[
                      rowCell(10250, 'MEETUPS'),
                      rowCell(1520, 'FRIENDS'),
                    ],
                  ),
                  new Divider(height: _height / 20, color: Colors.grey),
                  new Padding(
                      padding: new EdgeInsets.only(
                          left: _width / 15,
                          right: _width / 15,
                          top: _width / 100),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          labelText: 'Search past meetups',
                        ),
                      )),
                  new Padding(
                    padding: new EdgeInsets.only(
                        left: 23.0, right: 23.0, top: 20.0, bottom: 10.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.only(top: 7.0),
                          ),
                          const ListTile(
                            leading: Icon(Icons.group),
                            title:
                                Text('Meetup with friends from my old school'),
                            subtitle: Text('23 February, 2020'),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                child: const Text('SEE DETAILS'),
                                onPressed: () {
                                  navigateToEventDetailsPage(context);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget rowCell(int count, String type) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            '$count',
            
          ),
          new Text(type,
              style: new TextStyle(
                   fontWeight: FontWeight.normal))
        ],
      ));
}

Future navigateToEditPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => EditProfilePage()));
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}

Future navigateToEventDetailsPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => EventDetailsPage()));
}

 Future navigateToNotificationsPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NotificationsPage()));
  }