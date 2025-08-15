import 'package:flutter/material.dart';
import 'package:app_mostra/home.dart';
import 'package:app_mostra/page_alien.dart';
import 'package:app_mostra/page_fnaf.dart';

void main() {
  runApp(const MostraCodeApp());
}

class MostraCodeApp extends StatelessWidget {
  const MostraCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo Mostra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
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
