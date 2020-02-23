import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:rounded_letter/rounded_letter.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Friends'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              tooltip: "Search",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.feedback),
              tooltip: "Send feedback",
              onPressed: () {navigateToFeedbackPage(context);},
            ),
      ]),
      body: new ListView(
       children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
              title: Text('Arda Çebi'),
              onTap: () {},
            ),
            ListTile(
              leading: RoundedLetter(text: "A"),
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