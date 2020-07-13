import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:matasapi/Daftar.dart';
import 'package:matasapi/akun.dart';
import 'package:matasapi/cari.dart';
import 'package:matasapi/dashboard.dart';
import 'package:matasapi/login.dart';
import 'package:matasapi/registrasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final _pageOption = [DaftarSaya(), Cari(), AkunSaya(),Dashboard()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.yellow,
        buttonBackgroundColor: Colors.yellow,
        backgroundColor: Colors.white,
        height: 60,
        animationDuration: Duration(
          milliseconds: 200,
        ),
        animationCurve: Curves.decelerate,
        items: <Widget>[
          Icon(Icons.menu, color: Colors.deepPurple,size: 30,),
          Icon(Icons.search, color: Colors.deepPurple,size: 30),
          Icon(Icons.person, color: Colors.deepPurple,size: 30),
          Icon(Icons.home, color: Colors.deepPurple,size: 30),
        ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            //Handle button tap
          },
      ),
    );
  }
}