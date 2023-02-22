// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:figma1/component/loginpage.dart';
import 'package:figma1/component/signuppage_comp.dart';

import 'package:flutter/material.dart';

import 'starting_foodtype.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loginformat_page(
      list_widget: [
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //  children: [
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
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            "Sign IN",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "Poppins",
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: <Color>[
                      // Color(0xffEA5753),
                      Color(0xffC37B9B),

                      Color(0xffCC540D),
                    ],
                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
          ),
        ),
        emailbox(),
        passwordbox(),
        login_button(
            Textt: "Sign In",
            onTap: () {
              print("pressed");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Firstpage_food(),
                  ));
            }),
        SizedBox(
          height: 30 + MediaQuery.of(context).size.height,
        )
      ],
    );
    // ]);
  }
}
