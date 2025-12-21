import 'package:flutter/material.dart';

class CustomColumnView extends StatelessWidget {
  const CustomColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 100, width: 100, color: Colors.blue),
          Container(height: 100, width: 100, color: Colors.green),
        ],
      ),
    );
  }
}
