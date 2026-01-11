import 'package:flutter/material.dart';
import 'package:secbjp9/views/bottom_sheet_view.dart';
import 'package:secbjp9/views/custom_column_view.dart';
import 'package:secbjp9/views/dashboard_view.dart';
import 'package:secbjp9/views/expanded_widget_view.dart';
import 'package:secbjp9/views/home_view.dart';
import 'package:secbjp9/views/insta_clone_bottom.dart';
import 'package:secbjp9/views/login_view.dart';
import 'package:secbjp9/views/splash_view.dart';
import 'package:secbjp9/views/wallet_home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WalletHomeView());
  }
}
