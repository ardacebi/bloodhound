import 'package:flutter/material.dart';
import 'package:bloodhound/schedule/add_event.dart';
import 'package:bloodhound/notifications/notifications.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:bloodhound/schedule/event_details.dart';
import 'package:bloodhound/send_feedback.dart';

void main() => runApp(MaterialApp());

class SchedulePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SchedulePageState();
  }
}

class _SchedulePageState extends State<SchedulePage> with RouteAware {
  void _handleNewDate(date) {
    setState(() {
      _selectedDay = date;
      _selectedEvents = _events[_selectedDay] ?? [];
    });
    print(_selectedEvents);
  }

  List _selectedEvents;
  DateTime _selectedDay;

  final Map _events = {
    DateTime(2020, 3, 1): [
      {'name': 'Event A', 'isDone': true},
    ],
    DateTime(2020, 3, 4): [
      {'name': 'Event A', 'isDone': true},
      {'name': 'Event B', 'isDone': true},
    ],
    DateTime(2020, 3, 5): [
      {'name': 'Event A', 'isDone': true},
      {'name': 'Event B', 'isDone': true},
    ],
    DateTime(2020, 3, 13): [
      {'name': 'Event A', 'isDone': true},
      {'name': 'Event B', 'isDone': true},
      {'name': 'Event C', 'isDone': false},
    ],
    DateTime(2020, 3, 15): [
      {'name': 'Event A', 'isDone': true},
      {'name': 'Event B', 'isDone': true},
      {'name': 'Event C', 'isDone': false},
    ],
    DateTime(2020, 3, 26): [
      {'name': 'Event A', 'isDone': false},
    ],
  };

  @override
  void initState() {
    super.initState();
    _selectedEvents = _events[_selectedDay] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Schedule'), 
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color(0xff585ad6),
              Color(0xff2c8cb0),
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
            new Padding(
              padding: new EdgeInsets.only(
                  left: 23.0, right: 23.0, top: 5.0, bottom: 10.0),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 0.0),
              child: Calendar(
                  events: _events,
                  onRangeSelected: (range) =>
                      print("Range is ${range.from}, ${range.to}"),
                  onDateSelected: (date) => _handleNewDate(date),
                  isExpandable: true,
                  showTodayIcon: true,
                  eventDoneColor: Color(0xff585ad6),
                  eventColor: Color(0xff2c8cb0),
            ),
            // _buildEventList(),
            )],
        ),
      ),
    );
  }
}

/* Widget _buildEventList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.5, color: Colors.black12),
                ),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
              child: ListTile(
                title: Text(_selectedEvents[index]['name'].toString()),
                onTap: () {},
              ),
            ),
        itemCount: _selectedEvents.length,
      ),
    );
  } */

Future navigateToFeedbackPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}

Future navigateToEventDetailsPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => EventDetailsPage()));
}

 Future navigateToNotificationsPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => NotificationsPage()));
  }