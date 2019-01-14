import 'package:flutter/material.dart';

import 'package:rick_morty_app/feature/listing/characters_screen.dart';

void main() => runApp(HomeWidget());

class HomeWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CharacterScreen(),
      ),
    );
  }
}

