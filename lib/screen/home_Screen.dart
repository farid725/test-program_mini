import 'package:english_testt/screen/natijaPage.dart';
import 'package:english_testt/screen/savolPage.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  List<Map<String, dynamic>> savolJavoblar = [
    {
      "savol": "1. What ____ your name?",
      "javoblar": [
        {"matn": "old", "tugrimi": false},
        {"matn": "is", "tugrimi": true},
        {"matn": "in", "tugrimi": false},
        {"matn": "tom", "tugrimi": false},
      ],
    },
    {
      "savol": "2. Who ____ you?",
      "javoblar": [
        {"matn": "he", "tugrimi": false},
        {"matn": "me", "tugrimi": false},
        {"matn": "are", "tugrimi": true},
        {"matn": "Mike", "tugrimi": false},
      ],
    },
    {
      "savol": "3. I feel ___.",
      "javoblar": [
        {"matn": "are", "tugrimi": false},
        {"matn": "is", "tugrimi": false},
        {"matn": "hello", "tugrimi": false},
        {"matn": "tom", "tugrimi": true},
      ],
    },
    {
      "savol": "4. Oh, someone___ in my seat!.",
      "javoblar": [
        {"matn": "Was sitting", "tugrimi": false},
        {"matn": "is sitting", "tugrimi": true},
        {"matn": "sit", "tugrimi": false},
        {"matn": "sitting", "tugrimi": false},
      ],
    },
    {
      "savol": "5. They ___ me about it last week.",
      "javoblar": [
        {"matn": "Was telling", "tugrimi": false},
        {"matn": "Were telling", "tugrimi": false},
        {"matn": "told", "tugrimi": true},
        {"matn": "Tell", "tugrimi": false},
      ],
    },
  ];

  int hozirgiSavol = 0;
  int natija = 0;
  int natijalar = 0;

  void changeMyText(bool togrimi) {
    setState(() {
      hozirgiSavol++;
    });
    if (togrimi) {
      natija++;
    }
  }

  void qaytadanIshla() {
    setState(() {
      hozirgiSavol = 0;
      natija = 0;
      natijalar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
          height: size.height*1.0,
          width: size.width*1.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF20C073),
                Color(0xFF20C075)
              ]
            )
          ),
          child: Center(
            child: Container(
              height: 420,
              width: 350,
              color: Colors.white,
              child: Padding(
        padding: const EdgeInsets.all(20),
        child: hozirgiSavol < savolJavoblar.length
            ? SavolScreen(
                savolJavoblar[hozirgiSavol]["savol"],
                savolJavoblar[hozirgiSavol]["javoblar"],
                changeMyText,
              ) //SavolScreen
            : NatijaScreen(natija, savolJavoblar.length, qaytadanIshla),
            ),
            )
          ),
        ),
    );
  }
}
