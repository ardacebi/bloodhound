import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

final items = List<String>.generate(20, (i) => "Item ${i + 1}");

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Notifications'), 
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
          icon: Icon(Icons.search),
          tooltip: "Search",
          onPressed: () {},
        ),
        PopupMenuButton(
          onSelected: (result) {
            if (result == 0) {}
            if (result == 1) {}
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              child: Text('Clear all'),
              value: 0,
            ),
            const PopupMenuItem(
              child: Text('Send feedback'),
              value: 1,
            ),
          ],
        )
      ]),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return Dismissible(
            // Each Dismissible must contain a Key. Keys allow Flutter to
            // uniquely identify widgets.
            key: Key(item),
            // Provide a function that tells the app
            // what to do after an item has been swiped away.
            onDismissed: (direction) {
              // Remove the item from the data source.
              setState(() {
                items.removeAt(index);
              });

              // Then show a snackbar.
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            // Show a red background as the item is swiped away.
            background: Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: new EdgeInsets.only(right:20.0),
              color: Colors.red, 
              child: Icon(Icons.delete)
              ),
              direction: DismissDirection.endToStart,
            child: ListTile(title: Text('$item')),
          );
        },
      ),
    );
  }
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}
