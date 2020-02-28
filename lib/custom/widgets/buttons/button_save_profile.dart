import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BloodhoundButtonSaveProfile extends StatelessWidget {
  BloodhoundButtonSaveProfile({@required this.onPressed});
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        onPressed: () {

        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Save profile",
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