import 'package:flutter/material.dart';
import 'package:spotifyfinish/widgets/startup.dart';

class TodayTopHits extends StatefulWidget {
  const TodayTopHits({super.key});

  @override
  State<TodayTopHits> createState() => _TodayTopHitsState();
}

class _TodayTopHitsState extends State<TodayTopHits> {
  double _currentSlider = 20;
  String _time = "";
  List<String> _albumPhoto = [
    "assets/todayHitsAlbum1.png",
    "assets/todayHitsAlbum2.png",
    "assets/todayHitsAlbum3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0, // Kaydırırken altındaki gölgelik değişir.
        backgroundColor: Colors.transparent,
        // leading: IconButton(onPressed: () {
        //       Navigator.pop(context, true);
        // },icon: Image.asset('assets/todayTopHitsArrow.png')),
        leading: Container(
          margin: EdgeInsets.only(top: 20),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Image.asset('assets/todayTopHitsArrow.png')),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 26, right: 77),
            child: Text(
              "Today's Top Hits",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/more-vertical.png')))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 350,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 3,

              itemBuilder: (context, index) {
                return Container(
                  margin: index == 0
                      ? EdgeInsets.only(left: 0, top: 55)
                      : EdgeInsets.only(left: 10, top: 55),
                  width: 300,
                  height: 50,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)),
                  child: Image.asset('${_albumPhoto[index]}'),
                );
              },
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  "First Class",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  "Jack Harlow",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            //crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child: Slider(
                  value: _currentSlider,
                  activeColor: Colors.green,
                  inactiveColor: Colors.white,
                  max: 100,
                  min: 0,
                  thumbColor: Colors.white,
                  // divisions: 5,
                  onChanged: (double value) {
                    setState(() {
                      _currentSlider = value;
                      // if(_currentSlider>=60){
                      //   _currentSlider = 0;
                      // }
                      //_currentSlider++;
                      // _time = _currentSlider.ceil();
                      print("$_currentSlider");
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    // padding: EdgeInsets.all(0),
                    margin: EdgeInsets.only(left: 25, top: 45),
                    child: Text(
                      _currentSlider <= 60
                          ? '0 : ${(_currentSlider).ceil()}'
                          : '1 : ${(_currentSlider).ceil()}',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25, top: 45),
                    child: Text(
                      "2 : 53",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 35,
                  margin: EdgeInsets.only(left: 20),
                  child: IconButton(
                    icon: Image.asset('assets/todayTopHitsShuffle.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 35,
                  child: IconButton(
                    icon: Image.asset('assets/todayTopHitsBack.png'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: Container(
                    child: IconButton(
                      icon: Image.asset('assets/todayHitsPlayButton.png'),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  width: 35,
                  child: IconButton(
                    icon: Image.asset('assets/todayTopHitsNext.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  width: 35,
                  child: IconButton(
                    icon: Image.asset('assets/todayTopHitsRepeat.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Image.asset('assets/todayTopHitsBluetooth.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  "Airpods Pro",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            width: 300,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xff0D0D0D),
                borderRadius: BorderRadius.circular(40)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/topHitsHeart.png')),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/todayTopHitsMicrophone.png')),
                ),
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/todayTopHitsPlaylist.png')),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/todayTopHitsDevice.png')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
