import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';

class EventDetailsPage extends StatefulWidget {
  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}

class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Event Details'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.feedback),
          tooltip: "Send feedback",
          onPressed: () {navigateToFeedbackPage(context);},
        ),
      ]),
      body: new Center(
        child: Text('This is event details.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.share),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}