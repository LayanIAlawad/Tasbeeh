import 'package:flutter/material.dart';
import 'package:tasbeeh/counter.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "مسبحة رقمية",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 253, 201, 218),
        ),
        body: Counter(),
      ),
    ),
  );
}
