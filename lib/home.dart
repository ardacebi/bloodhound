import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';

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
      body: new Center(
        child: Text('This is home.'),
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}
