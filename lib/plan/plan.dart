import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:bloodhound/notifications/notifications.dart';

class PlanPage extends StatefulWidget {
  @override
  _PlanPageState createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Plan Event'), 
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
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}

 Future navigateToNotificationsPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NotificationsPage()));
  }