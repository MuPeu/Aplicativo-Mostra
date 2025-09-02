import 'package:flutter/material.dart';
import 'package:app_mostra/home.dart';
import 'package:app_mostra/page_alien.dart';
import 'package:app_mostra/page_fnaf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo Mostra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/alien': (context) => const PageAlien(),
        '/fnaf': (context) => const PageFnaf(),
      },
    );
  }
}