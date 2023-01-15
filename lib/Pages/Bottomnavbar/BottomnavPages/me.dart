import 'package:Fitnerds/Pages/Details/user.dart';
import 'package:Fitnerds/Pages/Details/user_preferences.dart';
import 'package:Fitnerds/Pages/Edit_pages/edit_profile_page.dart';
import 'package:Fitnerds/Pages/Homepage/appbar_widget.dart';
import 'package:Fitnerds/widgets/button_widget.dart';
import 'package:Fitnerds/widgets/numbers_widget.dart';
import 'package:Fitnerds/widgets/profile_widget.dart';
import 'package:flutter/material.dart';

class Me_Page extends StatefulWidget {
  const Me_Page({Key? key}) : super(key: key);

  @override
  State<Me_Page> createState() => _Me_PageState();
}

class _Me_PageState extends State<Me_Page> {
  @override
  Widget build(BuildContext context) {
    //this will check the user and set according profile
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(child: buildUpgradeButton()),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

// profile section wala button **toast not working
  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("currently in working phase!!"),
            backgroundColor: Colors.blueAccent,
          ));
        },
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
