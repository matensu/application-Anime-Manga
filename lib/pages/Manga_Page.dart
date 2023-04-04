import 'package:flutter/material.dart';

class MangaPage extends StatefulWidget {
  const MangaPage({Key? key}) : super(key: key);

  @override
  State<MangaPage> createState() => _MangaPageState();
}

class _MangaPageState extends State<MangaPage> {

  final events =[
    {
      "anime": "dragon ball",
      "date": "10/03/2023",
      "subject": "combat",
      "avatar": "dragon-ball",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/dragon-ball.jpg",
                width:100,
                height: 50,
              ),
              title: const Text('dragon ball'),
              subtitle: const Text('click here'),
              trailing: const Icon(Icons.info),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/One-piece.jpg",
                width:100,
                height: 45,
              ),
              title: const Text('One piece'),
              subtitle: const Text('click here'),
              trailing: const Icon(Icons.info),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/Naruto.jpg",
                width: 100,
                height: 250,
              ),
              title: const Text('Naruto'),
              subtitle: const Text('click here'),
              trailing: const Icon(Icons.info),
            ),
          ),
        ],
      ),
    );
  }
}

