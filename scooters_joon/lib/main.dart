import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _image =
        "https://cdn.pixabay.com/photo/2016/10/11/00/49/boy-1730246_960_720.jpg";
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight,
              child: Image(image: NetworkImage(_image), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                padding: EdgeInsets.only(left: 24, right: 24),
                height: screenHeight * 0.06,
                width: screenWidth,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: screenHeight * 0.06,
                      height: screenHeight * 0.06,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child:
                          Center(child: Icon(Icons.menu, color: Colors.white)),
                    ),
                    Spacer(),
                    Container(
                        width: screenHeight * 0.06,
                        height: screenHeight * 0.06,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        child: Badge(
                            child:
                                Icon(Icons.notifications, color: Colors.white),
                            badgeContent: Text("3"),
                            position: BadgePosition.topRight(
                                top: 0, right: screenWidth * 0.001))),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: screenHeight * 0.05,
            right: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.25,
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenHeight * 0.03),
                  Text(
                    "Getting around the city",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: screenHeight * 0.005),
                  Text(
                    "has become easy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage2()));
                      },
                      child: Container(
                        width: screenWidth,
                        height: screenHeight * 0.08,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Text(
                            "Start now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
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

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    final _image =
        "https://cdn.pixabay.com/photo/2016/03/31/15/16/child-1293122_960_720.png";
    final _image2 =
        "https://cdn.pixabay.com/photo/2016/04/01/08/49/box-1299001_960_720.png";
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    height: screenHeight * 0.06,
                    width: screenWidth,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: screenHeight * 0.06,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.circular(8)),
                          child: IconButton(
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Colors.white),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ),
                        Spacer(),
                        Container(
                            width: screenHeight * 0.06,
                            height: screenHeight * 0.06,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8)),
                            child: Badge(
                                child: Icon(Icons.notifications,
                                    color: Colors.white),
                                badgeContent: Text("3"),
                                position: BadgePosition.topRight(
                                    top: 0, right: screenWidth * 0.001))),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Text("Globber One",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
                SizedBox(height: screenHeight * 0.01),
                Text("Electric scooter",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: screenHeight * 0.05),
                Row(
                  children: <Widget>[
                    Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          "36V",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          "20km",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Row(
                  children: <Widget>[
                    Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          "3 hr",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Container(
                      width: screenWidth * 0.13,
                      height: screenWidth * 0.13,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          "75kg",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * 0.03),
                Container(
                  padding: EdgeInsets.all(16),
                  width: screenWidth * 0.29,
                  height: screenWidth * 0.29,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image(
                    image: NetworkImage(_image2),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                Container(
                    // padding: EdgeInsets.all(8),
                    width: screenWidth * 0.15,
                    height: screenWidth * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.play_arrow,
                            color: Colors.white, size: 30),
                        onPressed: () {}))
              ],
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.15,
            right: screenWidth * 0.03,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(_image))),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          width: screenWidth,
          height: screenHeight * 0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.home, size: 28, color: Colors.black),
              Icon(Icons.menu, size: 28, color: Colors.black45),
              Icon(Icons.search, size: 28, color: Colors.black45),
              Icon(Icons.location_on, size: 28, color: Colors.black45),
              Icon(Icons.people, size: 28, color: Colors.black45)
            ],
          ),
        ),
      ),
    );
  }
}
