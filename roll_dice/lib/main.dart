import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RollDicePage(),
      ),
    ),
  );
}
