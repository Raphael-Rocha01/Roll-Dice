import 'dart:math';

import 'package:flutter/material.dart';

class RollDicePage extends StatefulWidget {
  const RollDicePage({super.key});

  @override
  State<RollDicePage> createState() => _RollDicePageState();
}

class _RollDicePageState extends State<RollDicePage> {
  var numeroDado = 1;
  void rollDice() {
    setState(() {
      numeroDado = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 98),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/dice-$numeroDado.png",
                width: 200,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text("Jogar Dado"),
              )
            ],
          ),
        ));
  }
}
