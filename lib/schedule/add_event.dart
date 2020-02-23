import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      appBar: new AppBar(title: new Text('Add event'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.feedback),
          tooltip: "Send feedback",
          onPressed: () {navigateToFeedbackPage(context);},
        ),
      ]),
      body: new Center(
        child: Text('This is add event.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}