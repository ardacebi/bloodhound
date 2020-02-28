import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:bloodhound/profile/edit_profile.dart';

class BloodhoundButtonEdit extends StatelessWidget {
  BloodhoundButtonEdit({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {
          navigateToEditPage(context);
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff573b25), Color(0xffab8060)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 400.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Edit Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future navigateToEditPage(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => EditProfilePage()));
}