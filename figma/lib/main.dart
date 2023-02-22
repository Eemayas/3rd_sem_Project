import 'package:flutter/material.dart';

// import 'package:slider_button/slider_button.dart';

import 'component/frontphoto.dart';
import 'second.dart';
import 'slider_component.dart';
// import 'package:slider_button/slider_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Decoration boxDecoration_backgroundimage = BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/unsplash_li0iC0rjvvg (1).png")),
    );
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration_backgroundimage,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Front_photo(),
          Text(
            "Cooking Experience\nLike a Chef",
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
                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
          ),
          Center(
              child: SliderButton(
            listcolors: [Color(0xffF89B29), Color(0xffFF0F7B)],
            action: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const second()));

              ///Do something here
              //Navigator.of(context).pop();
            },
            alignLabel: Alignment.center,
            baseColor: Colors.white,
            //vibrationFlag: true,
            highlightedColor: Color(0xffEA5753),
            label: Text(
              "Get Started",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            icon: Icon(Icons.arrow_right_alt_outlined),
          ))
        ],
      ),
    ));
  }
}
