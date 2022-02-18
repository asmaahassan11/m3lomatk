import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/big_social_icon.dart';
import 'package:flutter_auth/Screens/Login/components/social_icon.dart';
import 'package:flutter_auth/home/home1.dart';
import 'package:flutter_auth/profile/components/profile_icon.dart';

import '../../constants.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.grey,
            height: 400,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Ready to Scan",
          style: TextStyle(
              color: Colors.deepPurple, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
        ),
        SizedBox(height: 20),
        SocalIcon(
          iconSrc: "assets/icons/mobile.svg",
          press: () {},
        ),
        SizedBox(height: 20,),
        Text("Hold a Ma3lomaty to the middle back of your phone to view profile. Hold the Ma3lomaty there until the profile appears!",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        SizedBox(height: 20,),
        RaisedButton(
            color: Colors.deepPurple,
            child: Text("Save", style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal),
            ),
            padding: EdgeInsets.symmetric(horizontal: 530, vertical: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
            onPressed: (){}),
      ],
    );
  }
  String selectedItem = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Ready to Scan",
          style: TextStyle(
              color: Colors.deepPurple, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
        ),
        SizedBox(height: 20,),
        BigSocalIcon(
          iconSrc: "assets/icons/mobile.svg",
          press: () {},
        ),
        SizedBox(height: 20,),
        Text("Hold a MA3LOMATK to the middle back of your phone to view profile. Hold the MA3LOMATK there until the profile appears!",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        SizedBox(height: 20,),
        RaisedButton(
            color: Colors.deepPurple,
            child: Text("Cancel", style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal),
            ),
            padding: EdgeInsets.symmetric(horizontal: 530, vertical: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            //press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Home();
                },
              ),
            );
          },),
      ],
    );
  }

  /*void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      selectedItem = name;
    });
  }*/
}
