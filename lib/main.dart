import 'package:flutter/material.dart';
import 'package:manga/pages/Manga_Page.dart';
import 'package:manga/pages/event_page.dart';
import 'package:manga/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar (
            backgroundColor: Colors.white.withAlpha(200),
            centerTitle: true,
            title: [
              const Text(
                  "Matensu App",
                style: TextStyle(color: Colors.black),
              ),
              const Text(
                  "Anime",
                style: TextStyle(color: Colors.black),
              ),
              const Text(
                  "Manga",
                style: TextStyle(color: Colors.black),
              )
            ][_currentIndex],
              ),
          body:[
            const HomePage(),
            const EventPage(),
            const MangaPage()
          ][_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentIndex(index),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            elevation: 100,
            iconSize: 30,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Accueil'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.theaters),
                  label: 'Anime'
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Manga'
              )
            ],
          )
      ),
    );
  }
}



  