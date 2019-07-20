import 'package:flutter/cupertino.dart';
import 'webviewscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Social Media",
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.black87,
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GetGestureDetector(
                      high: 100.0,
                      wid: 120.0,
                      name: "Facebook",
                      colour: Colors.blueAccent,
                      images: "images/fb.jpg",
                      url:
                          "https://m.facebook.com/profile.php?id=100004013537099",
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    GetGestureDetector(
                      high: 100.0,
                      wid: 120.0,
                      colour: Color(0xffF00169),
                      name: "Instagram",
                      images: "images/insta.jpg",
                      url: "https://www.instagram.com/sagarmittal.sm/?hl=en",
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GetGestureDetector(
                          colour: Color(0xff0378B6),
                          images: "images/link.jpg",
                          url: "https://www.linkedin.com",
                          name: "Linkedin",
                          high: 100.0,
                          wid: 120.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GetGestureDetector(
                          high: 100.0,
                          wid: 120.0,
                          colour: Color(0xffF60000),
                          images: "images/you.jpg",
                          name: "Youtube",
                          url:
                              "https://www.youtube.com/channel/UCJwnSYbyuH4_5VpgQDc-D5A",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    GetGestureDetector(
                      wid: 120.0,
                      high: 260.0,
                      colour: Color(0xff24292E),
                      images: "images/git.jpg",
                      name: "Github",
                      url: "https://github.com/sm-devlopers",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                GetGestureDetector(
                  high: 100.0,
                  wid: 260.0,
                  colour: Colors.white,
                  images: "images/google.jpg",
                  name: "Google",
                  url: "https://www.google.com",
                ),
              ],
            ),
          )),
    );
  }
}
// ignore: must_be_immutable
class GetGestureDetector extends StatelessWidget {
  GetGestureDetector(
      {this.url, this.images, this.name, this.high, this.wid, this.colour});

  final double high;
  final double wid;
  final Color colour;
  final String images;

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        width: wid,
        height: high,
        child: Image(
          image: AssetImage(images),
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(20.0)),
      ),
      onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewScreen(url,name)));

      },
    );
  }
}
