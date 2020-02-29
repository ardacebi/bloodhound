import 'package:flutter/material.dart';
import 'package:bloodhound/send_feedback.dart';
import 'package:bloodhound/settings/item_about.dart';
import 'package:bloodhound/settings/item_account.dart';
import 'package:bloodhound/settings/item_language.dart';
import 'package:bloodhound/settings/item_notifications.dart';
import 'package:bloodhound/settings/item_privacy.dart';
import 'package:bloodhound/settings/item_security.dart';
import 'package:bloodhound/settings/item_personalization.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Settings'), 
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
          icon: Icon(Icons.search),
          tooltip: "Search",
          onPressed: () {},
        ),
      ]),
      body: new ListView(
       children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your push notification settings'),
              onTap: () {navigateToNotificationsSection(context);},
              
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your privacy settings'),
              onTap: () {navigateToPrivacySection(context);},
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Security'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Take action and keep your account secure'),
              onTap: () {navigateToSecuritySection(context);},
            ),
            ListTile(
              leading: Icon(Icons.format_paint),
              title: Text('Personalization'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text("Personalize your app experience"),
              onTap: () {navigateToPersonalizationSection(context);},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Manage your account settings'),
              onTap: () {navigateToAccountSection(context);},
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Change your language settings'),
              onTap: () {navigateToLanguageSection(context);},
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text('Send feedback'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Report your feedback and thoughts'),
              onTap: () {navigateToFeedbackPage(context);},
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Help'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Get help from the support center'),
              onTap: _launchURL,
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About'),
              trailing: Icon(Icons.keyboard_arrow_right),
              subtitle: Text('Learn more about the app'),
              onTap: () {navigateToAboutSection(context);},
            ),
             ListTile(
              leading: Icon(Icons.group),
              title: Text('Invite a friend'),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {Share.share("Hey, can you take a look at Bloodhound? It's a social calendar with a meetup organization feature. See you there!");},
            ),
          ],
        ).toList(),
    ));
    }
    
  }

Future navigateToNotificationsSection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemNotifications()));
}

Future navigateToPrivacySection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemPrivacy()));
}

Future navigateToSecuritySection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemSecurity()));
}

Future navigateToPersonalizationSection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemPersonalization()));
}

Future navigateToAccountSection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemAccount()));
}

Future navigateToLanguageSection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemLanguage()));
}

Future navigateToFeedbackPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => SendFeedbackPage()));
}

Future navigateToAboutSection(context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => SettingsItemAbout()));
}

_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}