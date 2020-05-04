import 'package:course_music/profileScreen.dart';
import 'package:flutter/material.dart';

class PersonCoursePage extends StatefulWidget {
  String avt;
  PersonCoursePage(this.avt);
  @override
  _PersonCoursePageState createState() => _PersonCoursePageState();
}

class _PersonCoursePageState extends State<PersonCoursePage> {
  final imgBg =
      "https://cdn.pixabay.com/photo/2015/12/27/05/48/turntable-1109588_960_720.jpg";
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
              height: screenHeight * 0.35,
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(imgBg), fit: BoxFit.cover)),
            ),
          ),
          // appbar
          Positioned(
            top: 0,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: SafeArea(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: screenWidth * 0.1,
                  height: screenWidth * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(16)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          // contain page
          Positioned(
            bottom: 0,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              height: screenHeight * 0.45,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Get Started Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.more_horiz, size: 25),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    height: screenHeight * 0.4,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(16),
                            height: screenHeight * 0.12,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: screenWidth * 0.1,
                                  height: screenWidth * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.green),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Design Basic",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Learn basics.",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(height: screenHeight * 0.005),
                          Container(
                            padding: EdgeInsets.all(16),
                            height: screenHeight * 0.12,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: screenWidth * 0.1,
                                  height: screenWidth * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.grey[300]),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Concepts & Models",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Bringing it all together.",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(height: screenHeight * 0.005),
                          Container(
                            padding: EdgeInsets.all(16),
                            height: screenHeight * 0.12,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: screenWidth * 0.1,
                                  height: screenWidth * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.grey[300]),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Planning for success",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Why we are doing this?",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(height: screenHeight * 0.005),
                          Container(
                            padding: EdgeInsets.all(16),
                            height: screenHeight * 0.12,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: screenWidth * 0.1,
                                  height: screenWidth * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: Colors.grey[300]),
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.green,
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.05),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Planning for success",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Why we are doing this?",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // person
          Positioned(
            top: screenHeight * 0.2,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              padding: EdgeInsets.all(16),
              height: screenHeight * 0.3,
              width: screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.5,
                    spreadRadius: 0.5,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage(widget.avt)));
                    },
                    child: Hero(
                      tag: widget.avt,
                      child: Container(
                        width: screenWidth * 0.15,
                        height: screenWidth * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.black45,
                            image: DecorationImage(
                                image: NetworkImage(widget.avt),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "Ronaldo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "Beginner to piano",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.7,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                        child: Icon(
                                      Icons.perm_identity,
                                      color: Colors.green,
                                    )),
                                  ),
                                ),
                                Expanded(flex: 1, child: SizedBox()),
                                Expanded(
                                  flex: 7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("280 K",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Followers",
                                          style: TextStyle(color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 4,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green[100],
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    child: Center(
                                        child: Icon(
                                      Icons.star_border,
                                      color: Colors.green,
                                    )),
                                  ),
                                ),
                                Expanded(flex: 1, child: SizedBox()),
                                Expanded(
                                  flex: 7,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("5.0",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Ratings",
                                          style: TextStyle(color: Colors.grey)),
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
          ),
        ],
      ),
    );
  }
}
