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
      
      body: ListView.builder(
          itemBuilder: (context, index) {
            return TileItem(num: index);
          },
      ),
    );
  }
}

class TileItem extends StatelessWidget {
  final int num;

  const TileItem({Key key, this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "card$num",
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 485.0 / 384.0,
                  child: Image.network("https://picsum.photos/485/384?image=$num"),
                ),
                Material(
                  child: ListTile(
                    title: Text("Event $num"),
                    subtitle: Text("@arda: We had a gathering with friends from my old university at the best local bar. It really was fun."),
                  ),
                )
              ],
            ),
            Positioned(
              left: 0.0,
              top: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: () async {
                    await Future.delayed(Duration(milliseconds: 200));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return new PageItem(num: num);
                        },
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageItem extends StatelessWidget {
  final int num;

  const PageItem({Key key, this.num}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(
      primary: false,
      leading: IconTheme(data: IconThemeData(color: Colors.white), child: CloseButton()),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.1),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Stack(children: <Widget>[
      Hero(
        tag: "card$num",
        child: Material(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 485.0 / 384.0,
                child: Image.network("https://picsum.photos/485/384?image=$num"),
              ),
              Material(
                child: ListTile(
                  title: Text("Event $num"),
                  subtitle: Text("@arda: We had a gathering with friends from my old university at the best local bar. It really was fun."),
                ),
              ),
              Expanded(
                child: Center(child: Text("Some more content goes here!")),
              )
            ],
          ),
        ),
      ),
      Column(
        children: <Widget>[
          Container(
            height: mediaQuery.padding.top,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: appBar.preferredSize.height),
            child: appBar,
          )
        ],
      ),
    ]);
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