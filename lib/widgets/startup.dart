import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotifyfinish/widgets/getstarted.dart';

class StartUpWidget extends StatefulWidget {
  
/*

  - Startup kısmı uygulamam main.dart dosyasından çalışırken ilk çalışacak kısım ve bu kısma bir parametre veriyoruz.
  - bunun nedeni bu sayfada yaptığım uyguladığım bir animasyonu buradaki bool parametre ile kontrol etmem.
  - Bu sayfada asıl yapmak istediğim beyaz spotify logosundan yeşil spotify uygulamasına bir geçiş animasyonu yapmak onu yapamadım.
  - Başka bir animasyon oldu.

 */
  bool click;
  
  StartUpWidget({required this.click});

  @override
  State<StartUpWidget> createState() => _StartUpWidgetState();
}

class _StartUpWidgetState extends State<StartUpWidget> {
  @override
  // Splash Screen Çalışma esnasında
  // void State() {
  //   if(widget.click == false){
  //     goGetStarted();
  //   }
  //   super.initState();
  // }
  @override
  
 

  // 1 saniye aralıklar
  void didChangeDependencies() {
    // Yaşam döngüsünden bir periyot (Yaşam Döngüsü)
    super.didChangeDependencies();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        //sayi++;
        // widget.click = !widget.click;
     
        widget.click =
            false; 

        // false olarak verildi ilk durumda true geldi // 1sn sonra diğer fotoğrafa geçiş yapıldı
        
      });
    });
  }

  // double _myDuration = 300;
  // buradaki parametreler herhangi bir işe yaramıyor.
  // Color _color = Colors.red;
  // double _seconds = 2;
  // bool _click = false;

  // goGetStarted() async { // Kendi kendine geçiş splashscreen
    
  //   await Future.delayed(Duration(seconds: 1), (() {
  //     Navigator.push<void>(
  //       // Navigator ile buradaki spotify logosuna tıkladığımızda GetStarted sayfasını çağıyoruz.
  //       context,
  //       MaterialPageRoute<void>(
  //         builder: (BuildContext context) => GetStarted(),
  //       ),
  //     );
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          // içerisine verdiğimiz childlar ortalansın ekrana göre
          child: GestureDetector(
        // bu içerideki childlara bir onTap => kısa bir kez click işlemi
        onTap: () {
          setState(() {
            // buradaki onTap kısımlarını dinliyoruz
            Navigator.push<void>(
              // Navigator ile buradaki spotify logosuna tıkladığımızda GetStarted sayfasını çağıyoruz.
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => GetStarted(),
              ),
            );
          });
        },
        child: Container(
          // Container içerisinde bu logomuzu yerleştiriyoruz.
          //margin: EdgeInsets.only(top: 10),
          child: AnimatedCrossFade(
            // AnimatedCrossFade ile birinci fotoğraf ile ikinci fotoğraf arasında animasyonlu bir geçiş sağlıyoruz.
            firstChild: // ilk eleman
                Image.asset(
              'assets/spotifyLogo.png',
            ),
            secondChild:
                Image.asset('assets/spotifyLogoGreen.png'), // ikinci eleman
            duration: Duration(milliseconds: 500), // animasyon süresi
            firstCurve: Curves.linear, // ilk eleman animasyon türü
            secondCurve: Curves.linear, // ikinci eleman animasyon türü
            crossFadeState: widget
                    .click // gelen parametre bir zamanlayıcı ile değişecek
                ? CrossFadeState
                    .showFirst // birincisi olduktan sonra ikincisine geçiş yapılacak
                : CrossFadeState.showSecond,
          ),
        ),
      )),
    );
  }
}
