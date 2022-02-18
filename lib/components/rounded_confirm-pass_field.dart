import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedConfirmPassField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedConfirmPassField({
    Key key,
    this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "ConfirmPassword",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          /*suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),*/
          border: InputBorder.none,
        ),
      ),
    );
  }
}
