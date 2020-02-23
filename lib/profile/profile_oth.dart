import 'package:flutter/material.dart';

class ProfilePageOth extends StatefulWidget {
  @override
  _ProfilePageOthState createState() => _ProfilePageOthState();
}

class _ProfilePageOthState extends State<ProfilePageOth> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl =
        'https://scontent-atl3-1.cdninstagram.com/v/t51.2885-19/79807139_780619172452888_7800524258739748864_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com&_nc_ohc=jpxKFXBam5MAX-ZQ7bM&oh=0aed6910f023e71648653e821030b577&oe=5E807DBB';

    return new Stack(
      children: <Widget>[
        new Container(),
        new Scaffold(
            appBar: new AppBar(
              title: new Text('Profile'),
              actions: <Widget>[
            IconButton(
              icon: Icon(Icons.feedback),
              tooltip: "Send feedback",
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
      ]),
            backgroundColor: Colors.transparent,
            body: new Center(
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
                        color: Colors.white),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 70, left: _width / 8, right: _width / 8),
                    child: new Text(
                      'co-founder @ bloodhound, student, photographer, coder and many more',
                      style: new TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: _width / 25,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  new Divider(
                    height: _height / 20,
                    color: Colors.white,
                  ),
                  new Row(
                    children: <Widget>[
                      rowCell(10250, 'TOTAL GO-OUTS'),
                      rowCell(1520, 'FRIENDS'),
                    ],
                  ),
                  new Divider(height: _height / 20, color: Colors.white),
                  new Padding(
                    padding: new EdgeInsets.only(
                        left: _width / 8, right: _width / 8),
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            child: new RaisedButton(
                              child: new Text("Friends"),
                              color: Colors.blueAccent[600],
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: new OutlineButton(
                            child: new Text("Message"),
                            borderSide: BorderSide(color: Colors.blue),
                            color: Colors.blueAccent[600],
                            onPressed: () {},
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
      ],
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
}