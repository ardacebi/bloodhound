import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:rounded_letter/rounded_letter.dart';
import 'package:bloodhound/notifications/notifications.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Friends'), 
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
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          tooltip: "Search",
          onPressed: () {},
        ),
         IconButton(
          icon: Icon(Icons.notifications),
          tooltip: "Notifications",
          onPressed: () {navigateToNotificationsPage(context);},
        ),
        PopupMenuButton(
          onSelected: (result) {
            if (result == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendFeedbackPage()),
              );
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              child: Text('Send feedback'),
              value: 0,
            ),
          ],
        )
      ]),
      body: new ListView(
       children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(
                text: "A",
                shapeColor: Color(0xff573b25),
                ),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
          ],
        ).toList(),
    ));
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}

 Future navigateToNotificationsPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NotificationsPage()));
  }