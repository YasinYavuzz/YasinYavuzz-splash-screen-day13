import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
// GetStarted içerisinde butona tıklandığında login ekranına gidecek
class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( // Aynı alan içerisinde nesneleri üst üste komunlandırmaya yarar
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/getStartedPhoto.png"), // arkaplan resmini veriyoruz
                fit: BoxFit.cover, // arkaplan resmini tüm ekranı kaplaması için kullanıyoruz.
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //margin: EdgeInsets.only(bottom: 200),
                //alignment: Alignment.bottomCenter,
                child: Text(
                  'Spotify',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity, // containerın genişliğini tüm ekran genişliği veriyoruz
                margin: EdgeInsets.only(top: 35, left: 5, right: 5),
                //alignment: Alignment.bottomCenter,
                child: Text(
                  ' A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.',
                  textAlign: TextAlign.center, // yazının ortalanması için kullanıyoruz
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 50,
                margin: EdgeInsets.only(bottom: 50, top: 30),
                //alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40)),
                child: GestureDetector( // Buradaki butona onTap tıklanma özelliği kazandırıyoruz.
                  onTap: () {
                    setState(() { // Durumu sürekli olarak kontrol ediyoruz set ediyoruz.
                      Navigator.push<void>( // LoginWidget sayfasına geçiş yapıyoruz
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => LoginWidget(), // LoginWidget kısmına gidiyoruz.
                        ),
                      );
                    });
                  },
                  child: Center( // içerisine verilen widgetın bulunduğu alan içerisinde ortalanmasını sağlıyor.
                    child: Text(
                      ' Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
