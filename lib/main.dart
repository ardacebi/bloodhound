import 'package:flutter/material.dart';
import 'package:bloodhound/home.dart';
import 'package:bloodhound/notifications/notifications.dart';
import 'package:bloodhound/friends/friends.dart';
import 'package:bloodhound/profile/profile.dart';
import 'package:bloodhound/schedule/schedule.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      title: 'Bloodhound',
      darkTheme: ThemeData.dark(),
      home: MyBottomNavigationBar(),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyanAccent[600],
      ),
      
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SchedulePage(),
    FriendsPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> primaryAnimation,
          Animation<double> secondaryAnimation,
        ) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
            transitionType: SharedAxisTransitionType.horizontal,
          );
        },
        child: _children[_selectedIndex],
        ),
      
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _selectedIndex,
         items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today), title: new Text('Schedule')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.group), title: new Text('Friends')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.notifications), title: new Text('Notifications')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Profile')),
        ],
      ),
    );
  }
}