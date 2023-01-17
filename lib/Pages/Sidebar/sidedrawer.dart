import 'package:Fitnerds/Pages/Sidebar/SideBarPages/privacy_policy.dart';
import 'package:Fitnerds/Pages/Sidebar/SideBarPages/termsandconditions.dart';
import 'package:flutter/material.dart';

import 'SideBarPages/about_us.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12)),
                  child: const ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://mememandir.com/Resources/mememandir/Article/Images/matmaan2.png'),
                    ),
                    trailing: Icon(Icons.keyboard_arrow_down_outlined),
                    title: Text('Noob'),
                    subtitle: Text('phoolchand@xyz.com'),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(
                    top: 40, left: 15, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  tileColor: Colors.white10,
                  leading: const Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  title: const Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  tileColor: Colors.white10,
                  leading: const Padding(
                      padding: EdgeInsets.only(right: 6.0),
                      child: Icon(
                        Icons.insert_emoticon,
                        color: Colors.black,
                      )),
                  title: const Text(
                    'About Us',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const About_UsPage()))
                  },
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  tileColor: Colors.white10,
                  leading: const Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.black,
                  ),
                  title: const Text(
                    'Privacy policy',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Privacy_PolicyPage()))
                  },
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.file_copy_sharp,
                    color: Colors.black,
                  ),
                  title: const Text('Terms & conditions',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold)),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Terms_and_Conditions()))
                  },
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  margin:
                      const EdgeInsets.only(left: 10, right: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.support,
                      color: Colors.black,
                    ),
                    title: Text('Support',
                        style: TextStyle(
                            color: Colors.black,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  title: const Text('Logout',
                      style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold)),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
