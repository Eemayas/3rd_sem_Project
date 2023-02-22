import 'package:figma1/signin.dart';

import 'SignUP.dart';
import 'component/loginpage.dart';
import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loginformat_page(
      list_widget: [
        Hero(
          tag: "logo",
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(4, 7),
                    blurRadius: 10,
                    spreadRadius: 2,
                  )
                ],
                image: DecorationImage(image: AssetImage("assets/logo.jpg"))),
          ),
        ),
        login_button(
            Textt: "Sign In",
            onTap: () {
              print("pressed");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sign_In(),
                  ));
            }),
        login_button(
            Textt: "Sign Up",
            onTap: () {
              print("pressed");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sign_Up(),
                  ));
            }),
        SizedBox(
          height: 30 + MediaQuery.of(context).size.height,
        )
      ],
    );
  }
}
