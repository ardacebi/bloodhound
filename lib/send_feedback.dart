import 'package:bloodhound/custom/widgets/buttons/button_send_feedback.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SendFeedbackPage extends StatefulWidget {
  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  var _feedbackNameController = TextEditingController();
  var _feedbackUsernameController = TextEditingController();
  var _feedbackFeedbackController = TextEditingController();
  final FocusNode _feedbackNameFocus = FocusNode();
  final FocusNode _feedbackUsernameFocus = FocusNode();
  final FocusNode _feedbackFeedbackFocus = FocusNode();
  final keyIsFirstLoaded = 'is_first_loaded';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showDialogIfFirstLoaded(context));
    final _width = MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Send Feedback'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xffe9af84),
                Color(0xffba7e51),
              ])),
        ),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 20,
                    bottom: _width / 30),
                child: TextFormField(
                   controller: _feedbackNameController,
                  focusNode: _feedbackNameFocus,
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _feedbackNameFocus, _feedbackUsernameFocus);
                  },
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Your full name',
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextFormField(
                  controller: _feedbackUsernameController,
                  focusNode: _feedbackUsernameFocus,
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _feedbackUsernameFocus, _feedbackFeedbackFocus);
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(),
                    labelText: 'Your Bloodhound username',
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextFormField(
                  controller: _feedbackFeedbackController,
                  focusNode: _feedbackFeedbackFocus,
                  onFieldSubmitted: (term) {},
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  maxLines: null,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(),
                    labelText: 'Your feedback and thoughts',
                  ),
                )),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                child: new OutlineButton.icon(
                  label: Text("Upload attachments"),
                  icon: Icon(Icons.attach_file),
                  onPressed: () {
                    FilePicker.getMultiFilePath();
                  },
                ),
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Text(
                  "You can upload attachments such as screenshots and screen recordings in addition to your report.",
                  textAlign: TextAlign.center,
                  style: TextStyle()),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                child: new BloodhoundButtonSendFeedback(
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showDialogIfFirstLoaded(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLoaded = prefs.getBool(keyIsFirstLoaded);
    if (isFirstLoaded == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("About Sending Feedback"),
            content: new Text(
                "You've probably seen the feedback icon located at the top right of every page. This is because this app is under Beta testing and not stable. But it will, with your help. From this page, you can submit your feedback and your thoughts for us to improve the app. Your feedbacks can be about any bugs or design issues you spotted, or your thoughts about the app in general."),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Dismiss"),
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                  prefs.setBool(keyIsFirstLoaded, false);
                },
              ),
            ],
          );
        },
      );
    }
  }
}

_fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}