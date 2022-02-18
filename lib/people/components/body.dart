import 'package:flutter/material.dart';
import 'package:flutter_auth/people/components/people_icon.dart';
import 'package:flutter_auth/profile/components/profile_pic.dart';
import 'package:flutter_auth/background.dart';
import '../../constants.dart';
import 'background.dart';

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
        //padding: EdgeInsets.symmetric(vertical: 0),
        child: Column(
          children: [
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white,),
                  iconSize: 25,
                  onPressed: () {
                  },
                ),
                SizedBox(width: 90,),
                Text(
                  "People",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(width: 90,),
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.white,),
                  iconSize: 25,
                  onPressed: () {
                  },
                ),
              ],
            ),
            SizedBox(height: 30,),
            Icon(Icons.supervisor_account, size: 100,color: Colors.black45,),
            SizedBox(height: 10),
            Text("People Who Reached Out!",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
            SizedBox(height: 10),
            PeopleIcon(
              icon: "assets/images/person.png",
              text: "Harry Potter",
              //Stext:"322 Ma3lomaty",
              press: () {},
            ),
            PeopleIcon(
              icon: "assets/images/person.png",
              text: "Harry Potter",
              //Stext:"322 Ma3lomaty",
              press: () {},
            ),
            PeopleIcon(
              icon: "assets/images/person.png",
              text: "Harry Potter",
              //Stext:"322 Ma3lomaty",
              press: () {},
            ),
            PeopleIcon(
              icon: "assets/images/person.png",
              text: "Harry Potter",
              //Stext:"322 Ma3lomaty",
              press: () {},
            ),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.edit),
      onPressed: () {},
    );
  }
}
