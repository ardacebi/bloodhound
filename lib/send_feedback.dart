import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class SendFeedbackPage extends StatefulWidget {
  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(title: new Text('Send Feedback')),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Text(
                  "You've probably seen the feedback icon located at the top right of every page. This is because this app is under Beta testing and not stable. But it will, with your help.",
                  style: TextStyle(color: Colors.grey[400])),
            ),
            new Padding(
              padding: new EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Text(
                  "From this page, you can submit your feedback and your thoughts for us to improve the app.",
                  style: TextStyle(color: Colors.grey[400])),
            ),
            new Padding(
              padding: new EdgeInsets.only(
                  top: 15.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Text(
                  "Your feedbacks can be about any bugs or design issues you spotted, or your thoughts about the app in general.",
                  style: TextStyle(color: Colors.grey[400])),
            ),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextField(
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
                child: TextField(
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
                child: TextField(
                  keyboardType: TextInputType.multiline,
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
                  label:Text("Upload attachments"),
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
                  "You can upload attachments such as screenshots and screen recordings in addition to your report.", textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[500])),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                child: new RaisedButton.icon(
                  label:Text("Send Feedback"),
                   icon: Icon(Icons.send),
                  onPressed: () {
                    FilePicker.getMultiFilePath();
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
