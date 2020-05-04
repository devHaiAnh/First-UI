import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  String avt;
  ProfilePage(this.avt);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final imgBg =
      "https://www.heineken.com/ie/~/resources/heineken/ireland/liveyourmusic/new/key-visual-landing-page-1600-x-1600-px.jpg?v=20181212_134446&jq=80&process=crop&w=720&h=450&la=en-IE&hash=D38EEAB6BEAFE73A1302AF1C8D622EDC97F152AD";
  final imgBtn =
      "https://dt4621ya5dkz0.cloudfront.net/generated/1680w-2-1/160912-levisau-3085-jpg.jpg?1522893519";
  final imgSing =
      "https://cdn.pixabay.com/photo/2014/11/21/16/43/singer-540771_960_720.jpg";
  final imgPiano =
      "https://cdn.pixabay.com/photo/2016/01/19/15/07/pianist-1149172_960_720.jpg";
  final imgSacxophone =
      "https://cdn.pixabay.com/photo/2015/09/02/13/08/saxophone-918904_960_720.jpg";
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
              height: screenHeight * 0.33,
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
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
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
                      Container(
                        width: screenWidth * 0.1,
                        height: screenWidth * 0.1,
                        decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(16)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.04),
                  height: screenHeight * 0.26,
                  color: Colors.white.withOpacity(0.2),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Hero(
                          tag: widget.avt,
                          child: Container(
                            width: screenWidth * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(widget.avt),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Expanded(flex: 1, child: SizedBox()),
                      Expanded(
                        flex: 8,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: screenHeight * 0.03),
                            Column(
                              children: <Widget>[
                                Text(
                                  "Ronaldo",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(height: screenHeight * 0.01),
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
                              height: screenHeight * 0.08,
                              width: screenWidth * 0.5,
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
                                              width: screenWidth * 0.1,
                                              height: screenWidth * 0.09,
                                              decoration: BoxDecoration(
                                                  color: Colors.green[100],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("280 K",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("Followers",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey)),
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
                                      width: screenWidth * 0.1,
                                      height: screenWidth * 0.09,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.green[100],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("5.0",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text("Ratings",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // contain page
          Positioned(
            top: screenHeight * 0.43,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              height: screenHeight * 0.4,
              child: Container(
                height: screenHeight * 0.4,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "My Courses".toUpperCase(),
                          style: TextStyle(fontSize: 19),
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
                              height: screenHeight * 0.1,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: screenWidth * 0.15,
                                    height: screenWidth * 0.15,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(imgSing),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.green),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Sing",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "89% Completed",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: screenHeight * 0.1,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: screenWidth * 0.15,
                                    height: screenWidth * 0.15,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(imgPiano),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.green),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Piano",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "100% Completed",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: screenHeight * 0.1,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: screenWidth * 0.15,
                                    height: screenWidth * 0.15,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(imgSacxophone),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.green),
                                  ),
                                  SizedBox(width: screenWidth * 0.05),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Sacxophone",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "Not started yet",
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
          ),
          // bottom page
          Positioned(
            bottom: screenHeight * 0.03,
            left: screenWidth * 0.07,
            right: screenWidth * 0.07,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.07,
              ),
              height: screenHeight * 0.13,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: NetworkImage(imgBtn), fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "buy now".toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text("from UI8",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
