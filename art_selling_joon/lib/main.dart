import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double textSize = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: screenHeight * 0.07,
                  width: screenWidth,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: screenHeight,
                        width: screenHeight * 0.07,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16)),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 32,
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: screenHeight,
                        width: screenHeight * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[200]),
                        child: Icon(
                          Icons.search,
                          size: 32,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: screenHeight,
                        width: screenHeight * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Text(
                "Sky",
                style: TextStyle(
                    fontSize: 32 * textSize, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.5,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: screenHeight,
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Blue Sky",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 24 * textSize)),
                            SizedBox(height: screenHeight * 0.01),
                            Container(
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.75,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Container(
                                      height: screenHeight,
                                      width: screenHeight * 0.07,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Text(
                                    "Francesca",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16 * textSize),
                                  ),
                                  Spacer(),
                                  Text(
                                    "2 days ago",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16 * textSize),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Container(
                      height: screenHeight,
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/519411/pexels-photo-519411.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Orange Sky",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 24 * textSize)),
                            SizedBox(height: screenHeight * 0.01),
                            Container(
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.75,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Container(
                                      height: screenHeight,
                                      width: screenHeight * 0.07,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Text(
                                    "Francesca",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16 * textSize),
                                  ),
                                  Spacer(),
                                  Text(
                                    "2 days ago",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16 * textSize),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Container(
                      height: screenHeight,
                      width: screenWidth * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/907485/pexels-photo-907485.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Pink Sky",
                                style: TextStyle(
                                    color: Colors.pink[200],
                                    fontSize: 24 * textSize)),
                            SizedBox(height: screenHeight * 0.01),
                            Container(
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.75,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Container(
                                      height: screenHeight,
                                      width: screenHeight * 0.07,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Text(
                                    "Francesca",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16 * textSize),
                                  ),
                                  Spacer(),
                                  Text(
                                    "2 days ago",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16 * textSize),
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
              ),
              SizedBox(height: screenHeight * 0.05),
              Text(
                "Ending actions",
                style: TextStyle(
                    fontSize: 24 * textSize, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.zero,
                width: screenWidth,
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: <Widget>[
                    Container(
                      color: Colors.indigo,
                      height: screenHeight * 0.095,
                      width: screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: screenWidth*0.13,
                              width: screenWidth*0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Vally",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20 * textSize,
                                      color: Colors.white),
                                ),
                                SizedBox(height: screenHeight * 0.005),
                                Text(
                                  "by Ảnh Hai",
                                  style: TextStyle(
                                      fontSize: 16 * textSize,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: screenWidth*0.11,
                              width: screenWidth * 0.21,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 3)
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 32,
                                    color: Colors.greenAccent,
                                  ),
                                  Text("200 ",
                                      style: TextStyle(
                                          fontSize: 20 * textSize,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Container(
                      color: Colors.indigo,
                      height: screenHeight * 0.095,
                      width: screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: screenWidth*0.13,
                              width: screenWidth*0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Vally",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20 * textSize,
                                      color: Colors.white),
                                ),
                                SizedBox(height: screenHeight * 0.005),
                                Text(
                                  "by Ảnh Hai",
                                  style: TextStyle(
                                      fontSize: 16 * textSize,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: screenWidth*0.11,
                              width: screenWidth * 0.21,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 3)
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 32,
                                    color: Colors.greenAccent,
                                  ),
                                  Text("300 ",
                                      style: TextStyle(
                                          fontSize: 20 * textSize,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Container(
                      color: Colors.indigo,
                      height: screenHeight * 0.095,
                      width: screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: screenWidth*0.13,
                              width: screenWidth*0.13,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2015/10/12/15/16/cat-984367_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Vally",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20 * textSize,
                                      color: Colors.white),
                                ),
                                SizedBox(height: screenHeight * 0.005),
                                Text(
                                  "by Ảnh Hai",
                                  style: TextStyle(
                                      fontSize: 16 * textSize,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: screenWidth*0.11,
                              width: screenWidth * 0.21,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 3)
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 32,
                                    color: Colors.greenAccent,
                                  ),
                                  Text("400 ",
                                      style: TextStyle(
                                          fontSize: 20 * textSize,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
