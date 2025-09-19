import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            " سبحان الله ",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50),

          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 253, 201, 218),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(1, 3),
                ),
              ],
            ),
            child: Center(
              child: Text(
                "$count",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: StadiumBorder(),
              side: BorderSide(
                color: const Color.fromARGB(255, 163, 162, 162),
                width: 2,
              ),
            ),
            child: Text(
              " سبح ",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: StadiumBorder(),
              side: BorderSide(
                color: const Color.fromARGB(255, 163, 162, 162),
                width: 2,
              ),
            ),
            child: Text(
              " إعادة ",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
