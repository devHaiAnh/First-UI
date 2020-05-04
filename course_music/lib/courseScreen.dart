import 'package:course_music/personCourseScreen.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  final img1;
  final img2;
  final img3;
  CoursePage(this.img1, this.img2, this.img3);
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final avt =
      "https://www.onthisday.com/images/people/cristiano-ronaldo-medium.jpg";
  final imgBg =
      "https://media.idownloadblog.com/wp-content/uploads/2018/03/Apple-Music-icon-002.jpg";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // backround
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.41,
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
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: screenWidth,
                    height: screenHeight * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Find your \nmatches courses",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PersonCoursePage(avt)));
                          },
                          child: Hero(
                            tag: avt,
                            child: Container(
                              width: screenWidth * 0.1,
                              height: screenWidth * 0.1,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(avt),
                                      fit: BoxFit.cover),
                                  color: Colors.orangeAccent,
                                  border: Border.all(color: Colors.grey[400]),
                                  borderRadius: BorderRadius.circular(16)),
                              // child: Image.network(avt,fit: BoxFit.cover,height: screenWidth*0.01,width: screenWidth*0.01),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "10 Courses avaliable",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          // slider
          Positioned(
            top: screenHeight * 0.27,
            left: screenWidth * 0.07,
            right: 0,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.28,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Hero(
                    tag: widget.img1,
                    child: Container(
                      width: screenWidth * 0.4,
                      margin: EdgeInsets.only(right: screenWidth * 0.02),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(widget.img1),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.2,
                    margin: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                      horizontal: screenWidth * 0.02,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.img2),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    height: screenHeight * 0.2,
                    margin: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                      horizontal: screenWidth * 0.02,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.img3),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  )
                ],
              ),
            ),
          ),
          // menu course
          Positioned(
            bottom: 0,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              height: screenHeight * 0.4,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Popular Courses",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(Icons.more_horiz, size: 25),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Container(
                    height: screenHeight * 0.32,
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
                        ],
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
