import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> _songArtist = ["Juice Wrld, Drake, Kendrick","Joji, The KID LAROI","Lamar and more..."];
  List<String> _songType = ["Hip Hop Mix","Moody Mix","Moody Mix"]; 
  List<String> _albumPhoto = ["assets/song1.png","assets/song2.png","assets/song2.png"];
  List<String> _artists = ["assets/artist1.png","assets/artist.png","assets/artist.png"];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 89, left: 10),
              width: 336,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Good Morning',
                    style: GoogleFonts.caveat(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: IconButton(
                        onPressed: (() {}),
                        icon: Image.asset('assets/more-vertical.png')),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2, left: 33),
              child: Row(
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset('assets/lightning.png'),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      'Weekly',
                      style: GoogleFonts.caveat(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    child: Text(
                      'Music',
                      style: GoogleFonts.caveat(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 50, top: 30),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/your-discover.png'),
                          ),
                          Container(
                              child: Text(
                            '3D Fresh music for you every week',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Image.asset('assets/friday.png'),
                          ),
                          Container(
                              child: Text(
                            'New songs',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )),
                        ],
                      )),
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(top: 40, left: 45),
                  child: Text(
                    'Your Top Mixes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 200,
                  child: ListView.builder(
                    itemCount: _albumPhoto.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 30, top: 25),
                        width: 155,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff0B0B0B),
                          borderRadius: BorderRadius.circular(25),
                          // gradient: LinearGradient(
                          //   begin: Alignment.bottomLeft,
                          //   end: Alignment.topRight,
                          //   colors: [Colors.blue, Colors.red],
                          // )
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                _albumPhoto[index]
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 7, left: 16),
                              child: Text(
                                '${_songType[index]}',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 7, left: 16),
                              child: Text(
                                '${_songArtist[index]}',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(top: 50, left: 45),
                  child: Text(
                    'Suggested artists',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 200,
                  child: ListView.builder(
                    itemCount: _artists.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 30, top: 25),
                        width: 155,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff0B0B0B),
                          borderRadius: BorderRadius.circular(25),
                          // gradient: LinearGradient(
                          //   begin: Alignment.bottomLeft,
                          //   end: Alignment.topRight,
                          //   colors: [Colors.blue, Colors.red],
                          // )
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              alignment: Alignment.center,
                              child: Image.asset('${_artists[index]}'),
                            ),
                            
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
