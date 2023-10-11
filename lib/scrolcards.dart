import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class scrolcards extends StatefulWidget {
  const scrolcards({super.key});

  @override
  State<scrolcards> createState() => _scrolcardsState();
}

class _scrolcardsState extends State<scrolcards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            elevation: 5,
            color: Colors.black,
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/push.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            elevation: 5,
            color: Colors.black,
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/push.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            elevation: 5,
            color: Colors.black,
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'images/push.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
