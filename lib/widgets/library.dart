import 'package:flutter/material.dart';

class LibraryWidget extends StatefulWidget {
  const LibraryWidget({super.key});

  @override
  State<LibraryWidget> createState() => _LibraryWidgetState();
}

class _LibraryWidgetState extends State<LibraryWidget> {
  List<String> _activitiesIcon = [
    "assets/likeIcon.png",
    "assets/groupIcon.png",
    "assets/podcastIcon.png"
  ];
  List<String> _activitiesText = [
    "Liked Songs",
    "Followed Artists",
    "Followed Podcast"
  ];
  List<String> _activitiesArrow = [
    "assets/arrowsIcon.png",
    "assets/arrowsIcon.png",
    "assets/arrowsIcon.png"
  ];
  List<String> _playlistPhoto = [
    "assets/playlist1.png",
    "assets/playlist2.png",
    "assets/playlist1.png",
    "assets/playlist4.png"
  ];
  List<String> _playlistText = [
    "Playlists #1",
    "Playlists #2",
    "Playlists #3",
    "Playlists #4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 89, left: 28),
                  child: Text(
                    'Your Library',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 89, left: 90, right: 20),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/searchIcon.png'))),
                Container(
                    margin: EdgeInsets.only(top: 89, left: 0, right: 5),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/userIcon.png'))),
              ],
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _playlistPhoto.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0B0B0B),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 15),
                        child: Image.asset('${_playlistPhoto[index]}'),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 30, top: 11),
                        child: Text(
                          '${_playlistText[index]}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            /* Eski Playlist */
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(top: 35, left: 20, right: 5),
            //           width: 163,
            //           height: 181,
            //           decoration: BoxDecoration(
            //               color: Color(0xff0B0B0B),
            //               borderRadius: BorderRadius.circular(15)),
            //           child: Column(
            //             children: [
            //               Container(
            //                 margin: EdgeInsets.only(top: 20),
            //                 child: Image.asset('assets/playlist1.png'),
            //               ),
            //               Container(
            //                 margin: EdgeInsets.only(top: 10),
            //                 child: Text(
            //                   'Playlists #1',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           margin: EdgeInsets.only(top: 35, left: 20, right: 5),
            //           width: 163,
            //           height: 181,
            //           decoration: BoxDecoration(
            //               color: Color(0xff0B0B0B),
            //               borderRadius: BorderRadius.circular(15)),
            //           child: Column(
            //             children: [
            //               Container(
            //                 margin: EdgeInsets.only(top: 20),
            //                 child: Image.asset('assets/playlist2.png'),
            //               ),
            //               Container(
            //                 margin: EdgeInsets.only(top: 10),
            //                 child: Text(
            //                   'Playlists #2',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Row(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(top: 20, left: 20, right: 5),
            //           width: 163,
            //           height: 181,
            //           decoration: BoxDecoration(
            //               color: Color(0xff0B0B0B),
            //               borderRadius: BorderRadius.circular(15)),
            //           child: Column(
            //             children: [
            //               Container(
            //                 margin: EdgeInsets.only(top: 20),
            //                 child: Image.asset('assets/playlist1.png'),
            //               ),
            //               Container(
            //                 margin: EdgeInsets.only(top: 10),
            //                 child: Text(
            //                   'Playlists #3',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           margin: EdgeInsets.only(top: 20, left: 20, right: 5),
            //           width: 163,
            //           height: 181,
            //           decoration: BoxDecoration(
            //               color: Color(0xff0B0B0B),
            //               borderRadius: BorderRadius.circular(15)),
            //           child: Column(
            //             children: [
            //               Container(
            //                 margin: EdgeInsets.only(top: 20),
            //                 child: Image.asset('assets/playlist4.png'),
            //               ),
            //               Container(
            //                 margin: EdgeInsets.only(top: 10),
            //                 child: Text(
            //                   'Playlists #4',
            //                   style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //     Container(
            //       margin: EdgeInsets.only(top: 10),
            //       alignment: Alignment.center,
            //       child: Text(
            //         'see all',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold),
            //       ),
            //     )
            //   ],
            // ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              alignment: Alignment.topLeft,
              child: Text(
                'Your Activities',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 350,
              height: 215,
              child: ListView.builder(
                itemCount: _activitiesIcon.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 0),
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                          color: Colors.grey,
                        )),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              // height: 40,
                              margin: EdgeInsets.only(top: 15, left: 5),
                              alignment: Alignment.topLeft,
                              child: Image.asset('${_activitiesIcon[index]}'),
                            ),
                            Container(
                              //margin: EdgeInsets.only(right: 120),
                              child: Text(
                                '${_activitiesText[index]}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                        Container(
                          child: Image.asset('${_activitiesArrow[index]}'),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
