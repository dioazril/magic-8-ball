import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int randAnswer = 1;

  void randomized() {
    setState(() {
      randAnswer = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            randomized();
          },
          child: Image.asset('assets/images/ball$randAnswer.png'),
        ),
      ),
    );
  }
}
