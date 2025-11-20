import 'package:flutter/material.dart';

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.black),
      backgroundColor: Colors.black,
      body: Center(child: Text("$title (placeholder)", style: const TextStyle(color: Colors.white, fontSize: 18))),
    );
  }
}
