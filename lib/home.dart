import 'package:bloodhound/notifications/notifications.dart';
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
      appBar: new AppBar(
       title: new Text('Home'),
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
          onPressed: () {
            navigateToNotificationsPage(context);
          },
          
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
                      title: Text('Meetup with friends from my old school'),
                      subtitle: Text('23 February, 2020'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('SEE DETAILS'),
                          onPressed: () {
                            navigateToEventDetailsPage(context);
                          },
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

Future navigateToNotificationsPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => NotificationsPage()));
}

Future navigateToEventDetailsPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => EventDetailsPage()));
}
