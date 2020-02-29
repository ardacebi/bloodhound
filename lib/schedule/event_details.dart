import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:share/share.dart';

class EventDetailsPage extends StatefulWidget {
  @override
  _EventDetailsPageState createState() => _EventDetailsPageState();
}



class _EventDetailsPageState extends State<EventDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Event Details'), 
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
          icon: Icon(Icons.feedback),
          tooltip: "Send feedback",
          onPressed: () {navigateToFeedbackPage(context);},
        ),
      ]),
      body: new Center(
        child: Text('This is event details.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Share.share('Check this event by Arda!', subject: 'Hey there');},
        child: Icon(Icons.share),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}