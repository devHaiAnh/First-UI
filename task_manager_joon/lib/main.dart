import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // appbar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                width: screenWidth,
                height: screenHeight * 0.06,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                    IconButton(
                        icon: Icon(Icons.calendar_today), onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
          // body
          Positioned(
            top: screenHeight * 0.13,
            left: 0,
            right: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.3,
              // color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    width: screenWidth,
                    height: screenHeight * 0.1,
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("Create New",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                        Icon(Icons.navigate_next, color: Colors.red, size: 20)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24),
                    width: screenWidth,
                    height: screenHeight * 0.2,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.2,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  width: screenWidth * 0.8,
                                  height: screenHeight * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(flex: 7, child: Container()),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.redeem,
                                                    color: Colors.red),
                                                SizedBox(
                                                  width: screenWidth * 0.01,
                                                ),
                                                Text(
                                                  "03:30-05-25",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 13),
                                                ),
                                                Spacer(),
                                                Container(
                                                  width: screenWidth * 0.06,
                                                  height: screenWidth * 0.06,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: Colors.white),
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                  // child: ,
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  bottom: screenHeight * 0.06,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    width: screenWidth * 0.8,
                                    height: screenHeight * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.redAccent),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Ongoing",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Meetup 2k19",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Container(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.2,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  width: screenWidth * 0.8,
                                  height: screenHeight * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(flex: 7, child: Container()),
                                      Expanded(
                                          flex: 3,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 24),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(Icons.redeem,
                                                    color: Colors.blue),
                                                SizedBox(
                                                  width: screenWidth * 0.01,
                                                ),
                                                Text(
                                                  "03:30-05-25",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 13),
                                                ),
                                                Spacer(),
                                                Container(
                                                  width: screenWidth * 0.06,
                                                  height: screenWidth * 0.06,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: Colors.white),
                                                  child: Icon(
                                                    Icons.add,
                                                    size: 18,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )),
                                    ],
                                  ),
                                  // child: ,
                                ),
                              ),
                              Positioned(
                                  top: 0,
                                  bottom: screenHeight * 0.06,
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24),
                                    width: screenWidth * 0.8,
                                    height: screenHeight * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24),
                                        color: Colors.blueAccent),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Ongoing",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "Meetup 2k19",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              width: screenWidth,
              height: screenHeight * 0.5,
              child: Column(
                children: <Widget>[
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "This week",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.menu, color: Colors.black, size: 20)
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.38,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: screenWidth * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'NOV',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Container(
                                  width: screenWidth * 0.15,
                                  height: screenWidth * 0.05,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey[200]),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "15",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                                text: " SAT",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 10))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 15, top: 2),
                                    width: screenWidth * 0.005,
                                    height: screenHeight * 0.3,
                                    color: Colors.grey[200])
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            margin: EdgeInsets.only(top: screenHeight*0.1),
                            width: screenWidth * 0.5,
                            // color: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(16),
                                  width: screenWidth * 0.6,
                                  height: screenHeight * 0.1,
                                  color: Colors.orange[100],
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "C - meeting",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height:screenHeight*0.005),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    "03:30:05:25",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          screenWidth * 0.01),
                                                  Text(
                                                    "1h 25min",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 10),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          Icon(
                                            Icons.people,
                                            color: Colors.redAccent,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: screenHeight*0.01),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  width: screenWidth * 0.6,
                                  height: screenHeight * 0.1,
                                  color: Colors.blue[100],
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "C - meeting",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height:screenHeight*0.005),
                                              Row(
                                                children: <Widget>[
                                                  Text(
                                                    "03:30:05:25",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 10),
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          screenWidth * 0.01),
                                                  Text(
                                                    "1h 25min",
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 10),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          Icon(
                                            Icons.people,
                                            color: Colors.redAccent,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
