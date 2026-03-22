import 'package:flutter/material.dart';

class ScoreChart extends StatelessWidget {
  const ScoreChart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text('Score Chart'),
      ),
    );
  }
}
