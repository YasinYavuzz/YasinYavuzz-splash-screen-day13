import 'package:flutter/material.dart';
import 'package:spotifyfinish/widgets/home.dart';
import 'package:spotifyfinish/widgets/library.dart';
import 'package:spotifyfinish/widgets/search.dart';
import 'package:spotifyfinish/widgets/startup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartUpWidget( // Çalıştığında hangi sayfa gelecek
        click: true, // çağırdığım sayfayı parametre olarak verdim.
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0; // hangi index'i seçtiğim bilgisini tuttuğum için sayfa değişimini

  onTap(index) { // index üzerindeki değişimleri dinle => selectedIndex = index oluyor.
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> screens = [ // Hangi index seçili ise sayfaya git.
    const HomeWidget(), // index => 0
    const SearchWidget(), // index => 1
    const LibraryWidget(), // index => 2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screens[selectedIndex], // body ekranımız hangi index seçili ise o widget çalıştırılıyor.

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex, // gelen index => currentIndex
        backgroundColor: Colors.black,
        onTap: onTap, // tıklanma özelliği veriliyor.

        items: <BottomNavigationBarItem>[ // Bottom navigation barların itemları
          BottomNavigationBarItem( // BottomNavigationBarItemları giriyoruz
            icon: Image.asset('assets/home.png', // ilk item image icon olarak veriyoruz
                color: selectedIndex == 0 ? Colors.green : Colors.white), // burada da bottomNavigationBar kısmında hangi eleman seçili ise onun rengini değiştiriyoruz.
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/search.png',
                color: selectedIndex == 1 ? Colors.green : Colors.white
                //color: Colors.green,
                ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/book.png',
                color: selectedIndex == 2 ? Colors.green : Colors.white),
            label: '',
          ),
        ],
        //selectedItemColor: Colors.amber[800],
      ), 
    );
  }
}
// aaaa