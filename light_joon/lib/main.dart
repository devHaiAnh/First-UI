import 'package:flutter/material.dart';
import 'package:scrollable_bottom_sheet/scrollable_bottom_sheet.dart';
import 'package:scrollable_bottom_sheet/scrollable_controller.dart';

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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  String _image =
      "https://1.bp.blogspot.com/-WYcco2kxbEI/XRTV0mpGpsI/AAAAAAABECw/PQ9ETYffcJYdJlO19ZIahhSCDR8-2WHQACLcBGAs/s1600/tumblr_p3qtpbjIkC1svp654o1_1280.jpg";
  final controller = ScrollableController();

  @override
  Widget build(BuildContext context) {
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
              width: screenWidth,
              height: screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(_image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // AppBar
          Positioned(
            top: 0,
            left: screenWidth * 0.06,
            right: screenWidth * 0.06,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    Icon(Icons.hdr_weak, color: Colors.white)
                  ],
                ),
              ),
            ),
          ),
          // Menu Right
          Positioned(
            top: screenHeight * 0.2,
            right: screenWidth * 0.06,
            child: Container(
              width: screenWidth * 0.08,
              height: screenHeight * 0.17,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: screenWidth * 0.08,
                      height: screenWidth * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.shopping_cart,
                          size: 18, color: Colors.white)),
                  Container(
                      width: screenWidth * 0.08,
                      height: screenWidth * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.favorite_border,
                          size: 18, color: Colors.white)),
                  Container(
                      width: screenWidth * 0.08,
                      height: screenWidth * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.cloud_download,
                          size: 18, color: Colors.white)),
                ],
              ),
            ),
          ),
          // Bottom Sheet
          Positioned(
            bottom: 0,
            left: 0,
            child: ScrollableBottomSheet(
              controller: controller,
              minimumHeight: screenHeight * 0.4,
              halfHeight: screenHeight,
              autoPop: false,
              scrollTo: ScrollState.full,
              snapAbove: true,
              snapBelow: true,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.75,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.75),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
                  child: Column(
                    children: <Widget>[
                      // pull
                      Container(
                        width: screenWidth * 0.2,
                        height: screenHeight * 0.005,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Container(
                        width: screenWidth,
                        height: screenHeight * 0.65,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Blue Sky",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "799.999 VND",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              "Independent Designer",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Container(
                              width: screenWidth * 0.38,
                              height: screenHeight * 0.02,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: screenHeight * 0.02,
                                    width: screenWidth * 0.13,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.star,
                                            size: 10, color: Colors.white),
                                        Icon(Icons.star,
                                            size: 10, color: Colors.white),
                                        Icon(Icons.star,
                                            size: 10, color: Colors.white),
                                        Icon(Icons.star,
                                            size: 10, color: Colors.white),
                                        Icon(Icons.star_border,
                                            size: 10, color: Colors.white),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    "(974 collection)",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.03),
                            Text(
                              "In the field of astronomy, the sky is also called the celestial sphere. This is an abstract sphere, centred on the earth, on which the Sun, stars, planets, and the Moon appear to be traveling. The celestial sphere is conventionally divided into designated areas called constellations. Usually, the term sky is used informally as the point of view from the Earth's surface; however, the meaning and usage can vary.",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Container(
                              width: screenWidth,
                              height: screenHeight * 0.08,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "add to cart".toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth * 0.25,
                                    height: screenHeight * 0.05,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(32),
                                        color: Colors.red[500]),
                                    child: Center(
                                      child: Text(
                                        "Buy now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Try this one also",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.05),
                            Container(
                              width: screenWidth,
                              height: screenHeight * 0.21,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: screenWidth * 0.3,
                                    height: screenHeight * 0.21,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          width: screenWidth * 0.3,
                                          height: screenHeight * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(_image),
                                                  fit: BoxFit.fill),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Blue Sky",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Text(
                                                  "100.000 VND",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    // fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: screenWidth * 0.02),
                                  Container(
                                    width: screenWidth * 0.3,
                                    height: screenHeight * 0.21,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          width: screenWidth * 0.3,
                                          height: screenHeight * 0.15,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(_image),
                                                  fit: BoxFit.fill),
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                        ),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  "Blue Sky",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Text(
                                                  "200.000 VND",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    // fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
