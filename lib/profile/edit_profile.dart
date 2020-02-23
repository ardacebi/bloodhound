import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:image_crop/image_crop.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}
class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl =
        'https://scontent-atl3-1.cdninstagram.com/v/t51.2885-19/79807139_780619172452888_7800524258739748864_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com&_nc_ohc=jpxKFXBam5MAX-ZQ7bM&oh=0aed6910f023e71648653e821030b577&oe=5E807DBB';
    return new Scaffold(
      appBar: new AppBar(title: new Text('Edit Profile'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.feedback),
          tooltip: "Send feedback",
          onPressed: () {
            navigateToFeedbackPage(context);
          },
        ),
      ]),
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
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextField(
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Your name',
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(),
                    labelText: 'Bio',
                  ),
                )),
            new Padding(
              padding: new EdgeInsets.only(left: _width / 8, right: _width / 8),
              child: new Row(
                children: <Widget>[],
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                child: new RaisedButton.icon(
                  label: Text("Save profile"),
                  icon: Icon(Icons.save),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowCell(int count, String type) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            '$count',
            style: new TextStyle(color: Colors.white),
          ),
          new Text(type,
              style: new TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal))
        ],
      ));

  Future navigateToFeedbackPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
  }
}
