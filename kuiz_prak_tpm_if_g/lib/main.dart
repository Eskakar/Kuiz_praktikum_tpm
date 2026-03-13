import 'package:flutter/material.dart';
import 'package:kuiz_prak_tpm_if_g/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}