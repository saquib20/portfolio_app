import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyAbout());
}

class MyAbout extends StatefulWidget {
  const MyAbout({super.key});

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not open ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: BackButton(onPressed: (() => Navigator.of(context).pop())),
          // elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(" A  B  O  U  T    M  E"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.personal_injury,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.school,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            ShaderMask(
                              shaderCallback: (rect) {
                                return const LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black,
                                      Colors.transparent
                                    ]).createShader(Rect.fromLTRB(
                                    0, 0, rect.width, rect.height));
                              },
                              blendMode: BlendMode.dstIn,
                              child: Image.asset(
                                "assets/images/1.png",
                                height: 300,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Pursuing Bachelors of Engineering in Information Technology.\n \n Flutter Developer specializing in making responsive app. \n \n Experienced with all stages of the  development cycle for dynamic mobile app projects \n \n  Currently learning new packages and methods in DART programming language.\n \n Having little bit knowledge of HTML CSS and JAVASCRIPT",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white54),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Center(
                              child: Text(
                                'H  O  B  B  I  E  S',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white54),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Center(
                              child: Text(
                                '• Football \n • WatchMovies or TV-Shows\n',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text(
                              "P  R  O  J  E  C  T  S",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 60,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: GestureDetector(
                                  onTap: () {
                                    launchURL("www.github.com");
                                  },
                                  child: const Text(
                                    'TO - DO LIST',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 60,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: GestureDetector(
                                  onTap: () {
                                    launchURL("www.github.com");
                                  },
                                  child: const Text(
                                    'Online Education App ',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 60,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: GestureDetector(
                                  onTap: () {
                                    launchURL("www.github.com");
                                  },
                                  child: const Text(
                                    'Portfolio App ',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 60,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: GestureDetector(
                                  onTap: () {
                                    launchURL("www.github.com");
                                  },
                                  child: const Text(
                                    'Blood Bank – Mobile App Development',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 90,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: GestureDetector(
                                  onTap: () {
                                    launchURL("www.github.com");
                                  },
                                  child: const Text(
                                    'Google Maps & Xylophone – \nFlutter',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(16),
                    child: Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Text(
                              "E  D  U  C  A  T  I  O  N",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 150,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: const Center(
                                  child: Text(
                                    'XAVIER INSTITUE OF ENGINEERING SEM 7 \nBranch: IT \n Passing Year: 2021/2024',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 150,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: const Center(
                                  child: Text(
                                    'THAKUR POLYTECHNIC \nBranch: IT\n PERCENTAGE: 93.50\n Passing Year: 2018/2021',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  color: Colors.black, //<-- SEE HERE
                                ),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Container(
                                height: 150,
                                width: 500,
                                padding: const EdgeInsets.all(16),
                                child: const Center(
                                  child: Text(
                                    'RAIGAD MILITARY SCHOOL \n Class 10 CBSE BOARD \n PERCENTAGE: 75% \n Passing Year: 2017/2018 ',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
