import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuperManScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SuperManScreen extends StatefulWidget {
  @override
  _SuperManScreenState createState() => _SuperManScreenState();
}

class _SuperManScreenState extends State<SuperManScreen> {
  @override
  Widget build(BuildContext context) {
    final Color _color = Color.fromRGBO(52, 74, 74, 1);
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        // background image
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: screenHeight * 0.8,
            width: screenWidth,
            child:
                Image(image: AssetImage("assets/superman.jpg"), fit: BoxFit.cover),
          ),
        ),

        // appbar
        Positioned(
          top: 0,
          left: 0,
          child: SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24),
              height: 48,
              width: screenWidth,
              child: Row(
                children: <Widget>[
                  Icon(Icons.arrow_back, size: 24, color: Colors.white),
                  Spacer(),
                  Icon(Icons.shopping_cart, size: 24, color: Colors.white)
                ],
              ),
            ),
          ),
        ),

        // close icon
        Positioned(
          top: 130,
          left: 170,
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(32)),
            child: Icon(Icons.close, size: 16, color: Colors.black),
          ),
        ),

        // 3 colors container
        Positioned(
          top: 64,
          right: 50,
          child: Container(
            padding: EdgeInsets.only(left: 32, right: 32),
            height: 52,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "3 Colors:",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(backgroundColor: Colors.red, radius: 6),
                    CircleAvatar(backgroundColor: Colors.orange, radius: 6),
                    CircleAvatar(backgroundColor: Colors.blue, radius: 6),
                  ],
                )
              ],
            ),
          ),
        ),

        // add icon 1
        Positioned(
          top: 280,
          left: 90,
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(32)),
            child: Icon(Icons.add, size: 16, color: Colors.black),
          ),
        ),

        // add icon 2
        Positioned(
          top: 400,
          left: 200,
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(32)),
            child: Icon(Icons.add, size: 16, color: Colors.black),
          ),
        ),

        // green container
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: screenHeight * 0.35,
            width: screenWidth,
            decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.only(topRight: Radius.circular(32))),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "S 298.00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.blue,
                        size: 24,
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Superman ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: "logo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow, size: 12),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: Colors.yellow, size: 12),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: Colors.yellow, size: 12),
                      SizedBox(width: 8),
                      Icon(Icons.star, color: Colors.yellow, size: 12),
                      SizedBox(width: 8),
                      Icon(Icons.star_border, color: Colors.yellow, size: 12),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text("Ya, ya me está gustando más de lo normal",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(height: 8),
                  Text("Todos mis sentidos van pidiendo más",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(height: 8),
                  Text("Esto hay que tomarlo sin ningún apuro",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
            ),
          ),
        ),

        // blue contaier
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            height: 48,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topRight: Radius.circular(32)),
            ),
            child: Center(
                child: Text(
              "ADD TO CART",
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
          ),
        )
      ],
    ));
  }
}
