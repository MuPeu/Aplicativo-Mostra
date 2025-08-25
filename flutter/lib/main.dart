import 'package:flutter/material.dart';
import 'package:app_mostra/home.dart';

void main() {
  runApp(const Main());
}


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo Mostra',
      debugShowCheckedModeBanner: false,
    
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      initialRoute: '/',
    //   routes: {
    //     '/': (context) => const Main(),
    //     '/alien': (context) => const PageAlien(),
    //     '/fnaf': (context) => const PageFnaf(),
    //   },
      home: const Home(),
    );
  }
}