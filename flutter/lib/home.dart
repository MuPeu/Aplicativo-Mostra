import 'package:flutter/material.dart';
import 'package:app_mostra/page_alien.dart';
import 'package:app_mostra/page_fnaf.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Barra superior preta com ícones
          Container(
            color: Colors.black,
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botão Home
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const Home(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "src/assets/imgs/cracked_alien_skull.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                // Barra de pesquisa e lupa
                const SizedBox(width: 16),
                Expanded(
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        height: 22,
                        margin: const EdgeInsets.only(right: 50),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 53),
                        child: Image.asset(
                          "src/assets/imgs/magnify.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                // Ícone de menu
                Image.asset(
                  "src/assets/imgs/menu.png",
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),

          // Banner FNAF
          Stack(
            children: [
              Image.asset(
                "src/assets/imgs/fnaf.png",
                width: double.infinity,
                height: 217,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Positioned(
            left: 175,
            bottom: -40,
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
          const SizedBox(height: 16),
          // Cards de jogos em Column
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Card FNAF Sister Location
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const PageFnaf(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      color: const Color(0x1EB9B9B9),
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Image.asset(
                            "src/assets/imgs/sister_location.png",
                            width: 105,
                            height: 157,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 16),
                          
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Five Nights at Freddy's (FNAF)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto Flex',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "é uma série de jogos de terror onde o jogador assume o papel de um vigia de segurança em uma pizzaria abandonada, tendo que sobreviver durante a noite enquanto animatrônicos possessos tentam atacá-lo. O objetivo é monitorar as câmeras de segurança, controlar portas e luzes para se proteger, enquanto os animatrônicos se aproximam cada vez mais. A franquia é conhecida por sua atmosfera tensa, jumpscares e narrativa misteriosa envolvendo os eventos sombrios do local.",
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
                        ],
                      ),
                    ),
                  ),

                  // Card Alien Isolation
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const PageAlien(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      color: const Color(0x1EB9B9B9),
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Image.asset(
                            "src/assets/imgs/alien_isolation.png",
                            width: 105,
                            height: 156,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Alien: Isolation',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Roboto Flex',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'é um jogo de survival horror em que o jogador controla Amanda Ripley, filha de Ellen Ripley, tentando descobrir a verdade sobre a morte de sua mãe. Presa em uma estação espacial abandonada, Amanda é perseguida por um alienígena implacável. O jogo foca em furtividade e tensão, com o jogador utilizando recursos limitados para se esconder e evitar o alien enquanto explora o ambiente e resolve quebra-cabeças.',
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
