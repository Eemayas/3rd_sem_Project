import 'package:figma1/secondpage_foodlist.dart';
import 'package:figma1/trynav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'constant/constant.dart';

class Firstpage_food extends StatefulWidget {
  @override
  State<Firstpage_food> createState() => _Firstpage_foodState();
}

class _Firstpage_foodState extends State<Firstpage_food> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Likes',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Search',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Profile',
  //     style: optionStyle,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    double totalheight = MediaQuery.of(context).size.height;
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
                    Navigator.pop(context);
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
                    Navigator.pop(context);
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
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.menu_sharp, size: 30),
                    ],
                  ),
                  Container(
                    height: totalheight * 0.77,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "What do you\nwant\nto cook today?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              foreground: Paint()
                                ..shader = LinearGradient(
                                  colors: <Color>[
                                    Color(0xffEA5753),
                                    Color(0xffCC540D),
                                  ],
                                ).createShader(
                                    Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                        ),
                        Listview_food()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

class Listview_food extends StatelessWidget {
  const Listview_food({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 345,
      child: ListView(
        padding: const EdgeInsets.all(8.0),
        scrollDirection: Axis.horizontal,
        children: [
          slide_view(
              Textt: "foodName",
              OnTap: () {
                print("pressed");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          new secondpage_foodlist(FoodType: "foodName"),
                    ));
              }),
          slide_view(
              Textt: "foodName",
              OnTap: () {
                print("pressed");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          new secondpage_foodlist(FoodType: "foodName"),
                    ));
              }),
          slide_view(
              Textt: "foodName",
              OnTap: () {
                print("pressed");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          secondpage_foodlist(FoodType: "foodName"),
                    ));
              }),
          // slide_view(
          //   Textt: "foodName",
          //   OnTap: () {
          //     print("pressed");
          //   },
          // ),
          // slide_view(
          //   Textt: "food Name",
          //   OnTap: () {
          //     print("pressed");
          //   },
          // ),
          // slide_view(
          //   Textt: "food Name",
          //   OnTap: () {
          //     print("pressed");
          //   },
          // ),
          // slide_view(
          //   Textt: "food Name",
          //   OnTap: () {
          //     print("pressed");
          //   },
          // ),
        ],
      ),
    );
  }
}

class slide_view extends StatelessWidget {
  final String Textt;
  final Function() OnTap;
  slide_view({required this.Textt, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: OnTap,
        child: Container(
          height: 340,
          width: 244.5,
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
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xff741F1F), Color(0x00D9D9D9)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Hero(
              //   tag: "photo+$Textt",
              //   child:
              Container(
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
                    image:
                        DecorationImage(image: AssetImage("assets/logo.jpg"))),
                //),
              ),
              // Hero(
              //     tag: "text+$Textt",
              //     child:
              Text(Textt, textAlign: TextAlign.center, style: textStyle),
              //),
              Container(
                height: 51,
                width: 75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(65)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff741F1F), Color(0x00D9D9D9)])),
                child: Icon(
                  Icons.arrow_right_alt_sharp,
                  size: 40,
                  shadows: [
                    Shadow(
                        color: Color(0xffEA5753),
                        blurRadius: 10,
                        offset: Offset(4, 4))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
