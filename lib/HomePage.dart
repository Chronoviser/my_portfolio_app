import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.lime.withOpacity(0.1),
            Colors.lightBlueAccent.withOpacity(0.1),
            Colors.purpleAccent.withOpacity(0.1),
            Colors.redAccent.withOpacity(0.1),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('/me.jpg'),
                  ),
                  Text(
                    "Abhishek Singh",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Flutter Developer | Android Developer | Pythoneesta | UX designer",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  ),
                  Text(
                    "Converting Ideas to Reality",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "About Me",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "I am a Mobile Apps Developer, \ncurrently pursuing Computer Science and Engineering from Dr. B.R. National Institute of Technology, Jalandhar\n I have 2+ years Experience working with Android and more than 6 months experience working with Flutter\n I love Learning new skills and building something crazy👻 out of my knowledge\n My passion is to create Products that add value to every Human's👦 Life❤",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Connect with me 🤗",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            _launchURL(
                                "https://www.linkedin.com/in/abhishek-singh-07a3a1183/");
                          },
                          child: Image.asset("/linkedin.png",
                              width: 40, height: 40)),
                      SizedBox(width: 11),
                      GestureDetector(
                          onTap: () {
                            _launchURL(
                                "https://www.instagram.com/abhisheksinghoriginal/");
                          },
                          child: Image.asset("/instaIcon.png",
                              width: 40, height: 40)),
                      SizedBox(width: 11),
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://github.com/Chronoviser");
                        },
                        child: Image.asset("/githubIcon.png",
                            width: 40, height: 40),
                      ),
                      SizedBox(width: 11),
                      GestureDetector(
                        onTap: () {
                          _launchURL(
                              "https://play.google.com/store/apps/developer?id=TAS+productions");
                        },
                        child:
                            Image.asset("/playIcon.png", width: 40, height: 40),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
