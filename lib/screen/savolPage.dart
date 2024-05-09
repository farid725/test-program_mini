import 'package:flutter/material.dart';

class SavolScreen extends StatelessWidget {
  final String savol;
  final List<Map<String, dynamic>> javoblar;
  final Function savolgaJavobBerish;
  const SavolScreen(
    this.savol,
    this.javoblar,
    this.savolgaJavobBerish,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          savol,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[0]["tugrimi"],
          ),
          child: Text(
            javoblar[0]["matn"],
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[1]["tugrimi"],
          ),
          child: Text(
            javoblar[1]["matn"],
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[2]["tugrimi"],
          ),
          child: Text(
            javoblar[2]["matn"],
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () => savolgaJavobBerish(
            javoblar[3]["tugrimi"],
          ),
          child: Text(
            javoblar[3]["matn"],
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
