import 'package:flutter/material.dart';

class NatijaScreen extends StatelessWidget {
  final int natija;
  final int savolJavobl;
  final Function() restart;
  const NatijaScreen(
    this.natija,
    this.savolJavobl,
    this.restart,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Natija: $savolJavobl/$natija',
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          ),
          ElevatedButton(
            onPressed: restart,
            child: Icon(Icons.restart_alt),
          ),
        ],
      ),
    );
  }
}