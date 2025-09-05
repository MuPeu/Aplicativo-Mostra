import 'package:flutter/material.dart';

class PageAlien extends StatelessWidget {
  const PageAlien({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Barra superior com botões
          Container(
            height: 80,
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Botão Voltar
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Image.asset(
                    "src/assets/imgs/cracked_alien_skull.png",
                    width: 50,
                    height: 50,
                  ),
                ),
                // Barra de pesquisa com lupa
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

          // Banner da capa do jogo
          Image.asset(
            "src/assets/imgs/alien.png",
            width: double.infinity,
            height: 217,
            fit: BoxFit.cover,
          ),

          // Conteúdo principal scrollable
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'ALIEN: Isolation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text.rich(
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
                          text:
                              ' é um jogo de survival horror em que o jogador controla ',
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
                          text:
                              ', filha de Ellen Ripley, tentando descobrir a verdade sobre o desaparecimento de sua mãe. Ambientado 15 anos após os eventos do filme Alien: O Oitavo Passageiro, o jogo se passa na estação espacial ',
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
                          text:
                              ', um local decadente e isolado onde Amanda é perseguida por um xenomorfo letal — uma criatura que não pode ser derrotada em combate direto.\nDiferente de jogos de ação convencionais, Alien: Isolation foca intensamente na ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text:
                              'furtividade, no gerenciamento de recursos escassos e na criação de uma atmosfera constante de tensão psicológica',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              '. O jogador deve usar inteligência e cautela para evitar não apenas o alienígena, mas também humanos hostis e andróides instáveis, enquanto explora o ambiente, coleta informações e resolve quebra-cabeças. Com uma narrativa densa e um design fiel ao universo cinematográfico, o jogo entrega uma experiência angustiante e fiel ao espírito do terror original da franquia.',
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
                  const SizedBox(height: 16),

                  // Direção e Produção
                  const Text(
                    'Direção e Produção:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Diretor:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Alistair Hope\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Produtores:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Jonathan Court, Oli Smith\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Designers:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Gary Napper, Clive Lindop\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Programador:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Clive Gratton\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Escritores:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: ' Dan Abnett, Dion Lay, Will Porter\nCompositores: Christian Henson, Joe Henson, Alexis Smith',
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

                  const SizedBox(height: 16),

                  // Empresa / Estúdio
                  const Text(
                    'Empresa/Estúdio:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text.rich(
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
                          text: ' Creative Assembly\n',
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

                  const SizedBox(height: 16),

                  // Gênero
                  const Text(
                    'Gênero:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Gênero Principal: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: 'Ação-aventura\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Subgêneros: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: 'Stealth, Survival Horror',
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

                  const SizedBox(height: 16),

                  // Data de lançamento
                  const Text(
                    'Data de Lançamento:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Lançamento Original: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '7 de outubro de 2014\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Plataformas: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: 'PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Microsoft Windows, Linux, OS X, Nintendo Switch, Android, iOS',
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

                  const SizedBox(height: 16),

                  // Elenco
                  const Text(
                    'Elenco:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text.rich(
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
                          text: ' Andrea Deck\n',
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

                  const SizedBox(height: 16),

                  // Trailer
                  const Text(
                    'Trailer:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'https://www.youtube.com/watch?v=QJotMC5eXzQ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Site oficial e redes
                  const Text(
                    'Site Oficial e Redes Sociais:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Site Oficial: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
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
                          ),
                        ),
                        TextSpan(
                          text: 'Twitter: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: '@AlienIsolation\n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'Facebook: ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Roboto Flex',
                            fontWeight: FontWeight.w900,
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
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // MECÂNICAS
                  const Text(
                    'MECÂNICAS:',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto Flex',
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Exemplo de mecânica: Interação com o ambiente
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "src/assets/imgs/interacao_ambiente.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Interação com o Ambiente',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'O jogo permite explorar e interagir com o cenário, resolvendo puzzles, acessando terminais e coletando recursos para criar itens úteis à sobrevivência.',
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

                  const SizedBox(height: 16),

                  // Outra mecânica: Tensão Atmosférica
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "src/assets/imgs/tensao.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Tensão Atmosférica',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'O som ambiente, a escuridão e a presença constante do perigo criam uma atmosfera de medo e suspense, onde o jogador nunca se sente realmente seguro.',
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

                  const SizedBox(height: 16),

                  // Mecânica: Furtividade
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "src/assets/imgs/furtividade.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Furtividade',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'O jogador deve se esconder, distrair inimigos e usar o ambiente ao seu favor para evitar ser detectado pelo Xenomorfo e outros inimigos.',
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

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
