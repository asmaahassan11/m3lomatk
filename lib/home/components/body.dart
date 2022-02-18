import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/active_nfc/WelcomeNFC.dart';
import 'package:flutter_auth/drawer/components/drawer.dart';
import 'package:flutter_auth/home/components/background.dart';
import 'package:flutter_auth/home/components/facebook.dart';
import 'package:flutter_auth/home/components/instagram.dart';
import 'package:flutter_auth/home/components/snapchat.dart';
import 'package:flutter_auth/home/components/tiktok.dart';
import 'package:flutter_auth/home/components/twitter.dart';
import 'package:flutter_auth/home/components/whatsapp.dart';
import 'package:flutter_auth/home/home1.dart';
import 'package:flutter_auth/people/people.dart';
import 'package:flutter_auth/profile/profile_screen.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  final bool login;
  final Color color;

  const Body({
    Key key,
    this.login = true,
    this.color = kPrimaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          // backgroundColor: Colors.purple[300],
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/girl.png'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Username',
                        style:
                            TextStyle(fontSize: 18, color: Colors.deepPurple),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'username@gmail.com',
                        style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                      ),
                    ],
                  )),
              buildMenuItem(
                text: 'Home',
                icon: Icons.home_outlined,
                onClicked: () => selectedItem(context, 0),
              ),
              buildMenuItem(
                text: 'Edit Profile',
                icon: Icons.mode_edit,
                onClicked: () => selectedItem(context, 1),
              ),
              buildMenuItem(
                text: 'Active NFC',
                icon: Icons.power_settings_new,
                // onClicked: Active_NFC();
                onClicked: () => selectedItem(context, 2),
              ),
              buildMenuItem(
                text: 'Contact Us',
                icon: Icons.contact_mail,
                onClicked: () => selectedItem(context, 3),
              ),
              buildMenuItem(
                text: 'Logout',
                icon: Icons.logout,
                onClicked: () => selectedItem(context, 4),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 40.0, // double
          //leadingWidth: 900,
          actions: [
            IconButton(
              icon: Icon(Icons.apps_outlined),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        // drawer: DrawerWidget(),
        body: Background(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // SizedBox(height: 200,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        // Icons.widgets_outlined,
                        Icons.menu,
                        color: Colors.white,
                      ),
                      iconSize: 25,
                      onPressed: () {
                        //press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DrawerWidget();
                            },
                          ),
                        );
                        //},
                      },
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 13),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.apps_outlined,
                        color: Colors.white,
                      ),
                      iconSize: 25,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/girl.png",
                  ),
                  radius: 40.0,
                ),
                Container(
                    child: Text('username',
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.deepPurple,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.bold))),
                Container(
                    margin: EdgeInsets.only(top: 12.0),
                    child: Text('username@gmail.com',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w100,
                            fontFamily: 'Futura'))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: kPrimaryLightColor,
                      child: Text(
                        "Direct Off",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        //press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PeopleScreen();
                            },
                          ),
                        );
                        //},
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    RaisedButton(
                      color: kPrimaryLightColor,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        //press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProfileScreen();
                            },
                          ),
                        );
                        //},
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Instagram(),
                    SizedBox(
                      width: 50,
                    ),
                    Snapchat(),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaceBook(),
                    SizedBox(
                      width: 50,
                    ),
                    Twitter(),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TikTok(),
                    SizedBox(
                      width: 50,
                    ),
                    WhatsApp(),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildHeader({
    @required String urlImage,
    @required String name,
    @required String email,
    @required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          //padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.deepPurple),
                  ),
                ],
              ),
              Spacer(),
              /*CircleAvatar(
                radius: 24,
                backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                child: Icon(Icons.add_comment_outlined, color: Colors.deepPurple),
              )*/
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    @required String text,
    @required IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.deepPurple;
    final hoverColor = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Home(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomeNFC(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ));
        break;
    }
  }
}
