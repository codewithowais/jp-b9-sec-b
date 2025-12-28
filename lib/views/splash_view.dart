import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secbjp9/views/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(builder: (context) => LoginView()),
      );
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.g_mobiledata, size: 56),
            // Image.asset('assets/images/bmw.jpg', height: 150, width: 150),
            Text("MY APP", style: TextStyle(fontSize: 45, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
