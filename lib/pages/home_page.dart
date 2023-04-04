import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 280,
            ),
            const Text("Manga/Anime",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const Text("<Naruto> <One-Piece> <Dragon-Ball>",
                style: TextStyle(wordSpacing: 5,
                    fontSize: 20
                ),
                textAlign: TextAlign.center
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
          ],
        )
    );
  }
}
