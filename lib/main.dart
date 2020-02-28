import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bloodhound/home.dart';
import 'package:bloodhound/notifications/notifications.dart';
import 'package:bloodhound/friends/friends.dart';
import 'package:bloodhound/profile/profile.dart';
import 'package:bloodhound/schedule/schedule.dart';
import 'package:bloodhound/plan/plan.dart';
import 'package:animations/animations.dart';
import 'package:camera/camera.dart';

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
        textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        brightness: Brightness.light,
        primaryColor: Color(0xffba7e51),
        accentColor: Color(0xffe9af84),
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
    PlanPage(),
    FriendsPage(),
    ProfilePage(),
  ];

  void onTappedBar(int index) {
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
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 27.0,
        type: BottomNavigationBarType.fixed,
        onTap: onTappedBar,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_view_day),
              title: new Text('Schedule')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.add), title: new Text('Plan Event')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.group), title: new Text('Friends')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text('Profile')),
        ],
      ),
    );
  }
}
