import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.0, top: 5),
      child: GestureDetector(
        onTap: () {
          print("Profile Event !!! ");
        },
        child: const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/474x/66/f7/36/66f7364e37fc7ac9ce2e1fd823144802.jpg"),
        ),
      ),
    );
  }
}
