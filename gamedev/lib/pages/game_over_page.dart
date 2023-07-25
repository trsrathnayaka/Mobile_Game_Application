import 'package:flutter/material.dart';

class GameOverPage extends StatelessWidget {
  final int secretNumber;

  const GameOverPage({required this.secretNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
      backgroundColor: const Color.fromARGB(255, 125, 233, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Sorry Game Over. My Secret Number Is',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20),
                Text(
                  '$secretNumber',
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
              ),
              child: const Text(
                'Start the Game Again',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
