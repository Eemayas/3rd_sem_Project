import 'package:figma1/starting_foodtype.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'constant/constant.dart';

class secondpage_foodlist extends StatefulWidget {
  final String FoodType;
  secondpage_foodlist({required this.FoodType});

  @override
  State<secondpage_foodlist> createState() => _secondpage_foodlistState();
}

class _secondpage_foodlistState extends State<secondpage_foodlist> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Firstpage_food(),
                        ));
                  },
                ),
                // GButton(
                //   icon: LineIcons.heart,
                //   text: 'Likes',
                // ),
                // GButton(
                //   icon: LineIcons.search,
                //   text: 'Search',
                // ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              new secondpage_foodlist(FoodType: "foodName"),
                        ));
                  },
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration_backgroundimage,
        child: SafeArea(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 25,
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40741F1F),
                                offset: Offset(4, 7),
                                blurRadius: 10,
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(65)),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xff8D8988),
                                  Color(0x4DD9D9D9)
                                ])),
                        child: Center(
                          child: Hero(
                            tag: "text+${widget.FoodType}",
                            child: Text(
                              widget.FoodType,
                              style: textStyle.copyWith(
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Hero(
                      tag: "photo+${widget.FoodType}",
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
                            image: DecorationImage(
                                image: AssetImage("assets/logo.jpg"))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Listview_food(),
          ]),
        ),
      ),
    );
  }
}
