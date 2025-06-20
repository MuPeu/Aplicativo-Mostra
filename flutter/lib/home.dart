import 'package:flutter/material.dart';
import 'package:app_mostra/page_alien.dart';
import 'package:app_mostra/page_fnaf.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo Mostra',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/alien': (context) => const PageAlien(),
        '/fnaf': (context) => const PageFnaf(),
        // Adicione mais rotas aqui se tiver outras páginas
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 412,
              height: 917,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 412,
                      height: 80,
                      decoration: BoxDecoration(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    Positioned(
                      left: 15,
                      top: 15,
                      child: Image.asset(
                        "src/assets/imgs/game_icons - crack_alien_skull.png",
                        width: 50,
                        height: 50,
                      )
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                  ),
                  Positioned(
                    left: 109,
                    top: 30,
                    child: Container(
                      width: 194,
                      height: 22,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 277,
                    top: 30,
                    child: Image.asset(
                      "src/assets/imgs/icon - magnify.png",
                      width: 50,
                      height: 50,
                    )
                  ),
                  Positioned(
                    left: 363,
                    top: 36,
                    child: Image.asset(
                      "src/assets/imgs/icon - menu.png",
                      width: 50,
                      height: 50,
                    )
                  ),
                  Positioned(
                    left: 0,
                    top: 80,
                    child: Container(
                      width: 412,
                      height: 260,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 175,
                            top: 224,
                            child: Text(
                              'FNAF',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Image.asset(
                              "src/assets/imgs/image - FNAF.png",
                              width: 412,
                              height: 217,
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    Positioned(
                      left: 0,
                      top: 378,
                      child: Container(
                        width: 412,
                        height: 242,
                        decoration: BoxDecoration(color: const Color(0x1EB9B9B9)),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 402,
                      child: Image.asset(
                        "src/assets/imgs/image - FNAF Sister Location.png",
                        width: 104.67,
                        height: 157,
                      )
                    ),
                    Positioned(
                      left: 140,
                      top: 408,
                      child: SizedBox(
                        width: 258,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Five Nights at Freddy's (FNAF)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto Flex',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' é uma série de jogos de terror onde o jogador assume o papel de um vigia de segurança em uma pizzaria abandonada, tendo que sobreviver durante a noite enquanto animatrônicos possessos tentam atacá-lo. O objetivo é monitorar as câmeras de segurança, controlar portas e luzes para se proteger, enquanto os animatrônicos se aproximam cada vez mais. A franquia é conhecida por sua atmosfera tensa, jumpscares e narrativa misteriosa envolvendo os eventos sombrios do local.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto Flex',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 52,
                      top: 563,
                      child: Text(
                        'FNAF',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PageFnaf()),
                      );
                    },
                  ),
                  ElevatedButton(
                    Positioned(
                      left: 0,
                      top: 637,
                      child: Container(
                        width: 412,
                        height: 242,
                        decoration: BoxDecoration(color: const Color(0x1EB9B9B9)),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 671,
                      child: Image.asset(
                        "src/assets/imgs/image - Alien Isolation.png",
                        width: 105,
                        height: 156,
                      )
                    ),
                    Positioned(
                      left: 140,
                      top: 691,
                      child: SizedBox(
                        width: 258,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Alien: Isolation',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto Flex',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: ' é um jogo de survival horror em que o jogador controla Amanda Ripley, filha de Ellen Ripley, tentando descobrir a verdade sobre a morte de sua mãe. Presa em uma estação espacial abandonada, Amanda é perseguida por um alienígena implacável. O jogo foca em furtividade e tensão, com o jogador utilizando recursos limitados para se esconder e evitar o alien enquanto explora o ambiente e resolve quebra-cabeças.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto Flex',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 832,
                      child: Text(
                        'ALIEN: Isolation',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PageAlien()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}