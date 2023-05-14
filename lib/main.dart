import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter/home.dart';
import 'package:proyek_akhir_flutter/login.dart';
import 'package:proyek_akhir_flutter/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TokoKu',
      debugShowCheckedModeBanner: false, //menghilangkan banner "debug"
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const Login(),
        '/home': (context) => const HomeScreen()
      },
    );
  }
}
