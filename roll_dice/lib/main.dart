import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Teste(),
      ),
    ),
  );
}

class Teste extends StatelessWidget {
  const Teste({
    super.key,
  });

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
      child: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
