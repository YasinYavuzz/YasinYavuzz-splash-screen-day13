import 'package:flutter/material.dart';
import 'package:spotifyfinish/widgets/todayTopHit.dart';

class TopHits extends StatefulWidget {
  const TopHits({super.key});

  @override
  State<TopHits> createState() => _TopHitsState();
}

class _TopHitsState extends State<TopHits> {
  List<String> _albumPhoto = [
    "assets/topHitsAlbum1.png",
    "assets/topHitsAlbum2.png",
    "assets/topHitsAlbum3.png",
    "assets/topHitsAlbum4.png"
  ];
  List<String> _songName = ["STAY", "Wishing Well", "First Class", "Unstable"];
  List<String> _artists = [
    "The KID LAROI",
    "Juice WRLD",
    "Jack Harlow",
    "Justin Bieber"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Image.asset('assets/topHitsArrow.png')),
        actions: [
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/topHitsHeart.png')),
          IconButton(
              onPressed: () {}, icon: Image.asset('assets/more-vertical.png')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 370,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: Colors.grey,
                    )),
                  ),
                  child: Image.asset(
                    'assets/topHitsImage.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 250, left: 40),
                    child: Image.asset('assets/topHitsTodayText.png')),
                Container(
                    margin: EdgeInsets.only(top: 290, left: 40),
                    child: Image.asset('assets/topHitsText.png')),
                Container(
                    margin: EdgeInsets.only(top: 340, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  child: Image.asset(
                                      'assets/topHitHeartIcon.png')),
                              Container(
                                  margin: EdgeInsets.only(left: 7, top: 2),
                                  child:
                                      Image.asset('assets/topHitsLikes.png')),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 130),
                          child: Row(
                            children: [
                              Container(
                                  child:
                                      Image.asset('assets/topHitsClock.png')),
                              Container(
                                  margin: EdgeInsets.only(left: 7),
                                  child: Image.asset('assets/topHitsTime.png')),
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 335, right: 10),
                  child: Image.asset('assets/topHitsPlay.png'),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 25, bottom: 15),
              alignment: Alignment.topLeft,
              child: Text(
                'Featuring',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MediaQuery.removePadding(
              context: context,
              child: SizedBox(
                width: double.infinity,
                height: 350,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: _albumPhoto.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: index == 2
                          ? () {
                              Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const TodayTopHits(),
                                ),
                              );
                            }
                          : () {
                              null;
                            },
                      child: Container(
                        margin: EdgeInsets.only(top: 0, bottom: 0),
                        // width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Color(0xff202020),
                        ))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              alignment: Alignment.center,
                              child: Image.asset('${_albumPhoto[index]}'),
                            ),
                            Container(
                              width: 200,
                              padding: EdgeInsets.all(0),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 30, right: 50),
                                    child: Text(
                                      '${_songName[index]}',
                                      //textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(top: 8, right: 50),
                                    child: Text(
                                      '${_artists[index]}',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 0, right: 10),
                                      child: index == 2 || index == 3
                                          ? Image.asset(
                                              'assets/topHitsEmptyHeart.png')
                                          : Image.asset(
                                              'assets/topHitsGreenHeart.png')),
                                  Container(
                                    margin: EdgeInsets.only(top: 0, right: 15),
                                    child:
                                        Image.asset('assets/more-vertical.png'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
