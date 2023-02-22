import 'package:figma1/component/loginpage.dart';
import 'package:figma1/component/signuppage_comp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'starting_foodtype.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height * 2;
    double totalwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: totalheight,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffDE7544), Color(0x0DDBEC17)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft)),
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Hero(
                    tag: "logo",
                    child: Container(
                      height: 160,
                      width: 160,
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
                          image: DecorationImage(
                              image: AssetImage("assets/logo.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      "Sign UP",
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
                            ).createShader(
                                Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                    ),
                  ),
                  emailbox(),
                  passwordbox(),
                  generalbox(label: "Name", keyboardtype: TextInputType.name),
                  generalbox(
                      label: "Phone Number", keyboardtype: TextInputType.phone),
                  generalbox(
                      label: "Address",
                      keyboardtype: TextInputType.streetAddress),
                  SizedBox(
                    height: 20,
                  ),
                  login_button(
                      Textt: "Sign UP",
                      onTap: () {
                        print("pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Firstpage_food(),
                            ));
                      }),
                  SizedBox(
                    height: totalheight / 2,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
