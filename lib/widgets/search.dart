import 'package:flutter/material.dart';
import 'package:spotifyfinish/widgets/topHits.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  var _controller = TextEditingController();
  List<String> _artistName = [
    "The KID LAROI",
    "Drake",
    "Justin Bieber",
    "Joji",
    "LAROI"
  ];
  List<String> _podcastPhoto = [
    "assets/photo1.png",
    "assets/photo2.png",
    "assets/photo3.png",
  ];
  List<String> _songType = ["Hip Hop", "Pop", "Top-Hits", "Rap", "Jazz"];
  List<String> _podcastText1 = [
    "Impaulsive",
    "TED Talks Daily",
    "Mom's Basement",
  ];
  List<String> _podcastText2 = [
    "334 ep.",
    "155 ep.",
    "75 ep.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 60, bottom: 20, left: 25),
                  child: Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60, bottom: 20, right: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/more-vertical.png'),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0E0E0F),
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 43,
                  width: 342,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/search.png',
                          width: 25,
                        ),
                      ),
                      SizedBox(
                        height: 43,
                        width: 300,
                        child: TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          controller: _controller,
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 10, top: 12),
                              hintText: 'Artist, song, or podcast',
                              filled: true,
                              hoverColor: Colors.white,
                              fillColor: Color(0xff0E0E0F),
                              hintStyle: TextStyle(
                                color: Color(0xff434344),
                              ),
                              focusColor: Colors.white,
                              //hintStyle: ,
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  icon: Icon(Icons.clear),
                                  onPressed: (() {
                                    setState(() {
                                      _controller.clear();
                                    });
                                  }))),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width: 500,
              height: 70,
              child: ListView.builder(
                itemCount: _artistName.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 23, top: 15),
                    width: 130,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xff0B0B0B),
                      borderRadius: BorderRadius.circular(18),
                      // gradient: LinearGradient(
                      //   begin: Alignment.bottomLeft,
                      //   end: Alignment.topRight,
                      //   colors: [Colors.blue, Colors.red],
                      // )
                    ),
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        '${_artistName[index]}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: 500,
              height: 70,
              child: ListView.builder(
                itemCount: _songType.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: index == 2
                        ? () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const TopHits(),
                              ),
                            );
                          }
                        : () {
                            null;
                          },
                    child: Container(
                      margin: EdgeInsets.only(left: 23, top: 15),
                      width: 130,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xff0B0B0B),
                        borderRadius: BorderRadius.circular(18),
                        // gradient: LinearGradient(
                        //   begin: Alignment.bottomLeft,
                        //   end: Alignment.topRight,
                        //   colors: [Colors.blue, Colors.red],
                        // )
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          '${_songType[index]}',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            /* Eski Şarkı Türü ve Sanatçı Adı */
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'The Kid LAROI',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Drake',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Justin Bieber',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Joji',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'The Kid LAROI',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Hip Hop',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Pop',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Top-Hits',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Jazz',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         margin: EdgeInsets.only(top: 10, left: 25),
            //         width: 98,
            //         height: 40,
            //         decoration: BoxDecoration(
            //           color: Color.fromARGB(255, 39, 40, 41),
            //           border: Border.all(
            //             width: 1,
            //           ),
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Rap',
            //             style: TextStyle(color: Colors.white, fontSize: 12),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, left: 30),
                  width: 110,
                  height: 30,
                  child: Text(
                    'Podcasts',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 600,
                  height: 170,
                  child: ListView.builder(
                    itemCount: _podcastPhoto.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 23, top: 15),
                        width: 170,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff0B0B0B),
                          borderRadius: BorderRadius.circular(18),
                          // gradient: LinearGradient(
                          //   begin: Alignment.bottomLeft,
                          //   end: Alignment.topRight,
                          //   colors: [Colors.blue, Colors.red],
                          // )
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset('${_podcastPhoto[index]}'),
                            ),
                            Container(
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(top: 7, left: 23),
                                child: Column(
                                  children: [
                                    Container(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '${_podcastText1[index]}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      //margin: EdgeInsets.only(right: 39),
                                      child: Text(
                                        '${_podcastText2[index]}',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                /* Eski Podcast Kısmı */
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Container(
                //             margin: EdgeInsets.only(left: 30, top: 10),
                //             child: Image.asset('assets/photo1.png'),
                //           ),
                //           Container(
                //               margin: EdgeInsets.only(top: 10, right: 9),
                //               child: Column(
                //                 children: [
                //                   Text(
                //                     'Impaulsive',
                //                     style: TextStyle(
                //                         color: Colors.white, fontSize: 16),
                //                   ),
                //                   Text(
                //                     '334 ep.',
                //                     style: TextStyle(
                //                         color: Colors.grey, fontSize: 14),
                //                   ),
                //                 ],
                //               ))
                //         ],
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Container(
                //             margin: EdgeInsets.only(left: 30, top: 10),
                //             child: Image.asset('assets/photo2.png'),
                //           ),
                //           Container(
                //               margin: EdgeInsets.only(top: 10, right: 9),
                //               child: Column(
                //                 children: [
                //                   Text(
                //                     'Ted Talks Daily',
                //                     style: TextStyle(
                //                         color: Colors.white, fontSize: 16),
                //                   ),
                //                   Text(
                //                     '155 ep.',
                //                     style: TextStyle(
                //                         color: Colors.grey, fontSize: 14),
                //                   ),
                //                 ],
                //               ))
                //         ],
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           Container(
                //             margin: EdgeInsets.only(left: 30, top: 10),
                //             child: Image.asset('assets/photo3.png'),
                //           ),
                //           Container(
                //               margin: EdgeInsets.only(top: 10, right: 9),
                //               child: Column(
                //                 children: [
                //                   Text(
                //                     'Hip-Hop',
                //                     style: TextStyle(
                //                         color: Colors.white, fontSize: 16),
                //                   ),
                //                   Text(
                //                     '128 ep.',
                //                     style: TextStyle(
                //                         color: Colors.grey, fontSize: 14),
                //                   ),
                //                 ],
                //               ))
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 30),
              width: 120,
              height: 30,
              child: Text(
                'Browse all',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 3.8),
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  width: 20,
                  height: 20,
                  // color: Color.fromARGB(255, 49, 175, 154),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffE02FCF),
                        Color(0xff00C188),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Made For You',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  width: 20,
                  height: 20,
                  // color: Color.fromARGB(255, 49, 175, 154),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff0A3CEC),
                        Color(0xff4DD4AC),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Charts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  width: 20,
                  height: 20,
                  // color: Color.fromARGB(255, 49, 175, 154),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff0A3CEC),
                        Color(0xffD9DD01),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  width: 20,
                  height: 20,
                  // color: Color.fromARGB(255, 49, 175, 154),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff0E31AE),
                        Color(0xffDD1010),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'New Release',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  width: 20,
                  height: 20,
                  // color: Color.fromARGB(255, 49, 175, 154),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffDD1010),
                        Color(0xffD9DD01),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Charts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25),
                  margin: EdgeInsets.only(left: 15, top: 10, right: 15),
                  width: 20,
                  height: 20,
                  // color: Color.fromARGB(255, 49, 175, 154),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffDD1010),
                        Color.fromARGB(255, 52, 252, 112),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
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
