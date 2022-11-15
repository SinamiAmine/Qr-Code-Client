import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/model/user.dart';
import 'package:food_app/utils/user_preferences.dart';
import 'package:food_app/widgets/appbar_widget.dart';
import 'package:food_app/widgets/button_widget.dart';
import 'package:food_app/widgets/numbers_widget.dart';
import 'package:food_app/widgets/profile_widget.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  String _url = 'https://almaadenvillahotel.com/';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }


  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () async {},
            ),
            const SizedBox(height: 14),
            buildName(user),
            const SizedBox(height: 14),
            Center(child: buildUpgradeButton()),
            const SizedBox(height: 14),
            NumbersWidget(),
            const SizedBox(height: 22),
            buildAbout(user),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 4),
          Text(
            user.tele,
            style: TextStyle(color: Colors.grey),
          )
        ],


      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Site Officiel',
        onClicked: _launchURL,
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Adress',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              user.adress,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 12),
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 12),

            Text(
              'GPS',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "N 31° 35.496' / W 7° 56.373",
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );


}
