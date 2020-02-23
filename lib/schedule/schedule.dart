import 'package:flutter/material.dart';
import 'package:bloodhound/schedule/add_event.dart';
import 'package:bloodhound/send_feedback.dart';

void main() => runApp(MaterialApp(

    ));

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> with RouteAware {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new AppBar(
        title: new Text('Schedule'),
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
      body: new Center(
        child: Text('This is schedule.'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Add event"),
        icon: Icon(Icons.add),
        backgroundColor: Theme.of(context).accentColor,
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}