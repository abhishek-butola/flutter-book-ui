import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/cover.jpg',
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.6,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.54,
              left: 25,
              right: 25,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: 130.0,
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      elevation: 5.0,
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                'Tess of the road',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[800]),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.pink[200],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 32.0,
                              ),
                              Text(
                                'By Rachel Hartman',
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[500]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 32.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                                size: 20.0,
                              ),
                              SizedBox(
                                width: 2.0,
                              ),
                              Text(
                                '450',
                                style: TextStyle(
                                    fontSize: 11.0, color: Colors.grey[500]),
                              ),
                              Spacer(),
                              Text(
                                "See Review",
                                style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              SizedBox(
                                width: 33.0,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "About the book",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "In the medival kingdom of Gorred, women are expected to be ladies, men and their protectors, and...",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey[300]),
                                  child: Icon(Icons.share),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 240,
                                  height: 50,
                                  child: RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(5.0)),
                                    onPressed: () {},
                                    elevation: 0.0,
                                    child: Text(
                                      "Read Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: Colors.pinkAccent,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
