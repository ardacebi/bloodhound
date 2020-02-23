import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:bloodhound/schedule/event_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Home'), actions: <Widget>[
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
                                onPressed: () {navigateToEventDetailsPage(context);},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Future navigateToFeedbackPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
  }
}

Future navigateToEventDetailsPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => EventDetailsPage()));
}