import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MonPayClone());
}

class MonPayClone extends StatelessWidget {
  const MonPayClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MonPay Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
