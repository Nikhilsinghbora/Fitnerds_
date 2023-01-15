import 'package:Fitnerds/Pages/Homepage/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class Me_Page extends StatefulWidget {
  const Me_Page({Key? key}) : super(key: key);

  @override
  State<Me_Page> createState() => _Me_PageState();
}

class _Me_PageState extends State<Me_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [],
      ),
    );
  }
}
