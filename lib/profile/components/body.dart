import 'package:flutter/material.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/home/home1.dart';
import 'package:flutter_auth/profile/components/profile_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_auth/profile/components/background.dart';
import '../../constants.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.text,
    this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Background(
        child: SingleChildScrollView(
      //padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
                iconSize: 25,
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
                },
              ),
              SizedBox(width: 90,),
              Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(width: 90,),
              IconButton(
                icon: const Icon(Icons.password, color: Colors.white,),
                iconSize: 3,
                onPressed: () {
                },
              ),
            ],
          ),
          SizedBox(height:60,),
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Username",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Email",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Mobile Number",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Password",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          Text("Social Media Accounts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black45),),
          ProfileIcon(
            icon: "assets/icons/FaceBo.svg",
            text: "Facebook Profile Link",
            press: () {},
          ),
          ProfileIcon(
            icon: "assets/icons/instagram-round.svg",
            text: "Instagram Username",
            press: () {},
          ),
          ProfileIcon(
            icon: "assets/icons/snapchat-round.svg",
            text: "Snapchat Username",
            press: () {},
          ),
        ],
      ),
        ),
    );
  }
}
