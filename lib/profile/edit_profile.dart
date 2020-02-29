import 'package:bloodhound/custom/widgets/buttons/button_save_profile.dart';
import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:image_crop/image_crop.dart';
import 'package:file_picker/file_picker.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var _nameController = TextEditingController();
  var _usernameController = TextEditingController();
  var _bioController = TextEditingController();
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _bioFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl =
        'https://scontent-atl3-1.cdninstagram.com/v/t51.2885-19/79807139_780619172452888_7800524258739748864_n.jpg?_nc_ht=scontent-atl3-1.cdninstagram.com&_nc_ohc=jpxKFXBam5MAX-ZQ7bM&oh=0aed6910f023e71648653e821030b577&oe=5E807DBB';
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Edit Profile'),
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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.feedback),
              tooltip: "Send feedback",
              onPressed: () {
                navigateToFeedbackPage(context);
              },
            ),
          ]),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new SizedBox(
              height: _height / 25,
            ),
            new GestureDetector(
              onTap: () {
                FilePicker.getMultiFilePath();
              },
              child: CircleAvatar(
                radius: _width < _height ? _width / 7 : _height / 4,
                backgroundImage: NetworkImage(imgUrl),
              ),
            ),
            new SizedBox(
              height: _height / 50.0,
            ),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextFormField(
                  controller: _nameController,
                  focusNode: _nameFocus,
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _nameFocus, _usernameFocus);
                  },
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    labelText: 'Your name',
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextFormField(
                  controller: _usernameController,
                  focusNode: _usernameFocus,
                  onFieldSubmitted: (term) {
                    _fieldFocusChange(context, _usernameFocus, _bioFocus);
                  },
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.alternate_email),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                )),
            new Padding(
                padding: new EdgeInsets.only(
                    left: _width / 27,
                    right: _width / 27,
                    top: _width / 100,
                    bottom: _width / 30),
                child: TextFormField(
                  controller: _bioController,
                  focusNode: _bioFocus,
                  onFieldSubmitted: (term) {},
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  maxLines: null,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit),
                    border: OutlineInputBorder(),
                    labelText: 'Bio',
                  ),
                )),
            new Padding(
              padding: new EdgeInsets.only(left: _width / 8, right: _width / 8),
              child: new Row(
                children: <Widget>[],
              ),
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, top: 15.0),
                child: new BloodhoundButtonSaveProfile(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowCell(int count, String type) => new Expanded(
          child: new Column(
        children: <Widget>[
          new Text(
            '$count',
            style: new TextStyle(color: Colors.white),
          ),
          new Text(type,
              style: new TextStyle(
                  color: Colors.white, fontWeight: FontWeight.normal))
        ],
      ));

  Future navigateToFeedbackPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
  }
}

_fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
