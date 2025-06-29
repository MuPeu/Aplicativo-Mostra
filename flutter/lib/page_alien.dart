import 'package:flutter/material.dart';
import 'package:app_mostra/home.dart';
import 'package:app_mostra/page_fnaf.dart';

void main() {
  runApp(const PageAlien());
}

class PageAlien extends StatelessWidget {
  const PageAlien({super.key});

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
              height: 1760,
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
                    child: Image.asset(
                      "src/assets/imgs/image - Alien.png",
                      width: 412,
                      height: 217,
                    )
                  ),
                  Positioned(
                    left: 112,
                    top: 304,
                    child: Text(
                      'ALIEN: Isolation',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 348,
                    child: SizedBox(
                      width: 388,
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
                              text: ' é um jogo de survival horror em que o jogador controla ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Amanda Ripley',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: ', filha de Ellen Ripley, tentando descobrir a verdade sobre o desaparecimento de sua mãe. Ambientado 15 anos após os eventos do filme Alien: O Oitavo Passageiro, o jogo se passa na estação espacial ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Sevastopol',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: ', um local decadente e isolado onde Amanda é perseguida por um xenomorfo letal — uma criatura que não pode ser derrotada em combate direto.\nDiferente de jogos de ação convencionais, Alien: Isolation foca intensamente na ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'furtividade, no gerenciamento de recursos escassos e na criação de uma atmosfera constante de tensão psicológica',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '. O jogador deve usar inteligência e cautela para evitar não apenas o alienígena, mas também humanos hostis e andróides instáveis, enquanto explora o ambiente, coleta informações e resolve quebra-cabeças. Com uma narrativa densa e um design fiel ao universo cinematográfico, o jogo entrega uma experiência angustiante e fiel ao espírito do terror original da franquia.',
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
                    left: 19,
                    top: 602,
                    child: Text(
                      'Direção e Produção:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 625,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Diretor:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Alistair Hope\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Produtores:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Jonathan Court, Oli Smith\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Designers:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Gary Napper, Clive Lindop\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Programador:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Clive Gratton\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Escritores:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Dan Abnett, Dion Lay, Will Porter\nCompositores: Christian Henson, Joe Henson, Alexis Smith',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 19,
                    top: 763,
                    child: Text(
                      'Empresa/Estúdio:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 783,
                    child: SizedBox(
                      width: 354,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Desenvolvedor:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ' Creative Assembly',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Publisher:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ' Sega',
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
                    left: 19,
                    top: 841,
                    child: Text(
                      'Gênero:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 861,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Gênero Principal: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Ação-aventura\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Subgêneros: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Stealth, Survival Horror',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 19,
                    top: 927,
                    child: Text(
                      'Data de Lançamento:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 947,
                    child: SizedBox(
                      width: 331,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Lançamento Original: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: '7 de outubro de 2014\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'Plataformas: ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                                height: 1.50,
                              ),
                            ),
                            TextSpan(
                              text: 'PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Microsoft Windows, Linux, OS X, Nintendo Switch, Android, iOS',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 19,
                    top: 1049,
                    child: Text(
                      'Elenco:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 1069,
                    child: SizedBox(
                      width: 357,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Amanda Ripley:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ' Andrea Deck',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Outros Personagens:',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ' Diversos dubladores, com destaque para a atuação de Andrea Deck como protagonista.',
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
                    left: 19,
                    top: 1141,
                    child: Text(
                      'Trailer:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 1161,
                    child: Text(
                      'https://www.youtube.com/watch?v=QJotMC5eXzQ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 19,
                    top: 1209,
                    child: Text(
                      'Site Oficial e Redes Sociais:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                        height: 1,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 36,
                    top: 1229,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Site Oficial:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'https://www.sega.com/games/alien-isolation\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Twitter: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: '@AlienIsolation',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Facebook:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'https://www.facebook.com/AlienIsolation',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 1313,
                    child: Text(
                      'MECÂNICAS:',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    top: 1332,
                    child: Container(
                      width: 119,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 1340,
                    child: Image.asset(
                      "src/assets/imgs/image - Interacao Ambiente.png",
                      width: 202.10,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 222,
                    top: 1347,
                    child: Text(
                      'Interação com o Ambiente',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 222,
                    top: 1365,
                    child: SizedBox(
                      width: 176,
                      child: Text(
                        'O jogo permite explorar e interagir com o cenário, resolvendo puzzles, acessando terminais e coletando recursos para criar itens úteis à sobrevivência.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 206,
                    top: 1480,
                    child: Image.asset(
                      "src/assets/imgs/image - Tensao.png",
                      width: 191.88,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 60,
                    top: 1494,
                    child: Text(
                      'Tensão Atmosférica',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 1512,
                    child: SizedBox(
                      width: 186,
                      child: Text(
                        'O som ambiente, a escuridão e a presença constante do perigo criam uma atmosfera de medo e suspense, onde o jogador nunca se sente realmente seguro.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 1620,
                    child: Image.asset(
                      "src/assets/imgs/image - Furtividade.png",
                      width: 205.36,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 225,
                    top: 1633,
                    child: Text(
                      'Furtividade',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 225,
                    top: 1652,
                    child: SizedBox(
                      width: 173,
                      child: Text(
                        'O jogador deve se esconder, distrair inimigos e usar o ambiente ao seu favor para evitar ser detectado pelo Xenomorfo e outros inimigos.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto Flex',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}