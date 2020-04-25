import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final String _backgroundImage =
      "https://cdn.pixabay.com/photo/2017/03/15/13/27/rough-horn-2146181_960_720.jpg";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              child: Image(
                image: NetworkImage(_backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                  height: 52,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: <Widget>[
                      Expanded(flex: 1, child: IconButton(icon: Icon(Icons.menu, size: 24), onPressed: (){})),
                      Expanded(
                        flex: 8,
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Wasserauen, Swiss",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        ),
                      ),
                      Expanded(
                          flex: 1, child: IconButton(icon: Icon(Icons.my_location, size: 24), onPressed: (){}))
                    ],
                  )),
            ),
          ),

          // 26.6
          Positioned(
            top: 120,
            left: 100,
            child: Column(
              children: <Widget>[
                Text(
                  "26,6* F",
                  style: TextStyle(color: Colors.white, fontSize: 80),
                ),
                Text(
                  "Sunny and Snowy",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // color: Colors.yellow,
              height: screenHeight * 0.45,
              child: Stack(
                children: <Widget>[
                  // real Container
                  Positioned(
                    top: 28,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: screenHeight * 0.45,
                      width: screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(48),
                              topRight: Radius.circular(48))),
                      child: ListView(
                        children: <Widget>[
                          SizedBox(height: 16),
                          Container(
                            padding: EdgeInsets.only(
                                left: 32, right: 32, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Text("10:00 am",style: TextStyle(fontSize: 20)),
                                Spacer(),
                                Text("28,4* F",style: TextStyle(fontSize: 20)),
                                SizedBox(width: 16),
                                Icon(FontAwesomeIcons.cloudSun, size: 32)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 32, right: 32, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Text("11:00 am",style: TextStyle(fontSize: 20)),
                                Spacer(),
                                Text("29,4* F",style: TextStyle(fontSize: 20)),
                                SizedBox(width: 16),
                                Icon(FontAwesomeIcons.cloudSun, size: 32)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 32, right: 32, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Text("12:00 am",style: TextStyle(fontSize: 20)),
                                Spacer(),
                                Text("29,4* F",style: TextStyle(fontSize: 20)),
                                SizedBox(width: 16),
                                Icon(FontAwesomeIcons.cloudSun, size: 32)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 32, right: 32, bottom: 16),
                            child: Row(
                              children: <Widget>[
                                Text("01:00 pm",style: TextStyle(fontSize: 20)),
                                Spacer(),
                                Text("30,4* F",style: TextStyle(fontSize: 20)),
                                SizedBox(width: 16),
                                Icon(FontAwesomeIcons.cloudSunRain, size: 32)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // floatingButton
                  Positioned(
                    top: 0,
                    left: screenWidth * 0.5 - 28,
                    child: Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
