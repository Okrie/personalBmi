import 'package:flutter/material.dart';

class BmiAppBar extends StatelessWidget {
  const BmiAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'BMI Calculator',
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            //
          },
          icon: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
