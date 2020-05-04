import 'package:course_music/courseScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final imgBg =
      "https://images.pexels.com/photos/6966/abstract-music-rock-bw.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  final singCourse =
      "https://images.pexels.com/photos/1813241/pexels-photo-1813241.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  final rapCourse =
      "https://images.pexels.com/photos/894156/pexels-photo-894156.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  final sacxophoneCourse =
      "https://images.pexels.com/photos/1813157/pexels-photo-1813157.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  final pianoCourse =
      "https://images.pexels.com/photos/2308868/pexels-photo-2308868.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  final fluteCourse =
      "https://images.pexels.com/photos/221563/pexels-photo-221563.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  final violinCourse =
      "https://images.pexels.com/photos/3648678/pexels-photo-3648678.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.43,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgBg), fit: BoxFit.cover)),
            ),
          ),
          // appbar
          Positioned(
            top: 0,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Hey, What would\nyou like to learn\ntoday?",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  Container(
                    height: screenHeight * 0.07,
                    padding: EdgeInsets.only(top: 2, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search here",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                ],
              ),
            ),
          ),
          // Contain
          Positioned(
            bottom: 0,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.61,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.3,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoursePage(
                                            singCourse,
                                            rapCourse,
                                            pianoCourse)));
                              },
                              child: Hero(
                                tag: singCourse,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: screenHeight * 0.03,
                                      right: screenWidth * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(singCourse),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 7,
                                          child: Container(
                                            child: SizedBox(),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: screenWidth,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Sing",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "19 Course",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoursePage(
                                            rapCourse,
                                            pianoCourse,
                                            sacxophoneCourse)));
                              },
                              child: Hero(
                                tag: rapCourse,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: screenHeight * 0.03,
                                      left: screenWidth * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(rapCourse),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 7,
                                          child: Container(
                                            child: SizedBox(),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: screenWidth,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Rap",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "19 Course",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.3,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoursePage(
                                            pianoCourse,
                                            sacxophoneCourse,
                                            violinCourse)));
                              },
                              child: Hero(
                                tag: pianoCourse,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: screenHeight * 0.03,
                                      right: screenWidth * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(pianoCourse),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 7,
                                          child: Container(
                                            child: SizedBox(),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: screenWidth,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Piano",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "19 Course",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoursePage(
                                            sacxophoneCourse,
                                            violinCourse,
                                            fluteCourse)));
                              },
                              child: Hero(
                                tag: sacxophoneCourse,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: screenHeight * 0.03,
                                      left: screenWidth * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(sacxophoneCourse),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 7,
                                          child: Container(
                                            child: SizedBox(),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: screenWidth,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Sacxophone",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "19 Course",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.3,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoursePage(
                                            violinCourse,
                                            fluteCourse,
                                            singCourse)));
                              },
                              child: Hero(
                                tag: violinCourse,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      bottom: screenHeight * 0.03,
                                      right: screenWidth * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(violinCourse),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 7,
                                          child: Container(
                                            child: SizedBox(),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: screenWidth,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Violin",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "19 Course",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoursePage(
                                            fluteCourse,
                                            singCourse,
                                            rapCourse)));
                              },
                              child: Hero(
                                tag: fluteCourse,
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: screenHeight * 0.03,
                                      left: screenWidth * 0.015),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: NetworkImage(fluteCourse),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 7,
                                          child: Container(
                                            child: SizedBox(),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: screenWidth,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Colors.white.withOpacity(0.6),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Flute",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black87,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "19 Course",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black54,
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
