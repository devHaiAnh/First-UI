import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmmorceScreen(),
    );
  }
}

class EmmorceScreen extends StatefulWidget {
  @override
  _EmmorceScreenState createState() => _EmmorceScreenState();
}

class _EmmorceScreenState extends State<EmmorceScreen> {
  final Color _color = Color.fromRGBO(95, 74, 227, 1);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background color
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight,
              width: screenWidth,
              color: _color,
            ),
          ),

          // appbar
          Positioned(
            top: screenHeight * 0.15 - 48,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                children: <Widget>[
                  Icon(Icons.menu, size: 24, color: Colors.white),
                  Spacer(),
                  Icon(Icons.search, size: 24, color: Colors.white),
                  SizedBox(width: 16),
                  Icon(FontAwesomeIcons.envelope,
                      size: 24, color: Colors.white),
                ],
              ),
            ),
          ),

          // white container
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.85,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Discover",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Text(
                          "Customers",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Identified",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 64,
                      width: screenWidth,
                      // color: Colors.pink,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: user.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 16),
                            height: 48,
                            width: 64,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: NetworkImage(user[index].image),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: <Widget>[
                        Text(
                          "Activity",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                      ],
                    ),
                    // SizedBox(height: 8),
                    Container(
                      height: screenHeight - 325,
                      width: screenWidth,
                      // color: Colors.pink,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: user.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: <Widget>[
                              Positioned(
                                child: Container(
                                  margin: EdgeInsets.only(top: 32, bottom: 16),
                                  height: 200,
                                  width: screenWidth,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            user[index].productImage),
                                        fit: BoxFit.cover),
                                    // color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  height: 64,
                                  width: screenWidth - 48,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          margin: EdgeInsets.all(8),
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      user[index].image),
                                                  fit: BoxFit.cover)),
                                          // color: Colors.yellow,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              user[index].name,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              user[index].product,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(Icons.arrow_forward_ios,
                                              color: Colors.black, size: 24))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    )
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

// user accounts list
class User {
  String name;
  Color textColor;
  String image;
  String product;
  String productImage;

  User(
      {this.name, this.textColor, this.image, this.product, this.productImage});
}

List<User> user = [
  User(
      name: "Cristiano Ronaldo",
      image: "https://futhead.cursecdn.com/static/img/20/players/20801.png",
      product: "Soccer ball",
      productImage:
          "https://images.pexels.com/photos/47730/the-ball-stadion-football-the-pitch-47730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  User(
      name: "Thierry Henry",
      image:
          "https://futhead.cursecdn.com/static/img/20/players/icon-stories/237069.png",
      product: "Rugby",
      productImage:
          "https://images.pexels.com/photos/209956/pexels-photo-209956.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  User(
      name: "Lionel Messi",
      image: "https://futhead.cursecdn.com/static/img/20/players/158023.png",
      product: "Basketball",
      productImage:
          "https://images.pexels.com/photos/945471/pexels-photo-945471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  User(
      name: "Diego Maradona",
      image:
          "https://futhead.cursecdn.com/static/img/20/players/icon-stories/237074.png",
      product: "Ping pong",
      productImage:
          "https://images.pexels.com/photos/569986/pexels-photo-569986.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  User(
      name: "Zlatan Ibrahimovic",
      image: "https://futhead.cursecdn.com/static/img/20/players/41236.png",
      product: "Tennis ball",
      productImage:
          "https://images.pexels.com/photos/226565/pexels-photo-226565.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
];
