import 'package:flutter/material.dart';

class Front_photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0,
      child: Container(
        width: 275,
        height: 275,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/jay-wennington-N_Y88TWmGwA-unsplash.jpg"),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: const Offset(10.0, 0.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            )
          ],
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    );
  }
}
