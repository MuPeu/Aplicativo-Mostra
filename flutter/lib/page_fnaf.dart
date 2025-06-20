import 'package:flutter/material.dart';
import 'package:app_mostra/home.dart';
import 'package:app_mostra/page_alien.dart';

void main() {
  runApp(const PageFnaf());
}

class PageFnaf extends StatelessWidget {
  const PageFnaf({super.key});

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
              height: 2190,
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
                      "src/assets/imgs/image - FNAF",
                      width: 412,
                      height: 217,
                    ),
                  ),
                  Positioned(
                    left: 175,
                    top: 304,
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
                    left: 12,
                    top: 348,
                    child: SizedBox(
                      width: 388,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Five Nights at Freddy's (FNAF)",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ' é uma série de jogos de terror onde o jogador assume o papel de um vigia de segurança em uma pizzaria abandonada, tendo que sobreviver durante a noite enquanto animatrônicos possessos tentam atacá-lo. O objetivo é monitorar as câmeras de segurança, controlar portas e luzes para se proteger, enquanto os animatrônicos se aproximam cada vez mais. A franquia é conhecida por sua atmosfera tensa, jumpscares e narrativa misteriosa envolvendo os eventos sombrios do local.\nEm ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "Five Nights at Freddy's: Sister Location",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ', o conceito tradicional da série é expandido. Desta vez, o jogador assume o papel de um técnico de manutenção recém-contratado na ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: "Circus Baby's Entertainment and Rental",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ', uma instalação subterrânea ligada à pizzaria original. Em vez de permanecer em um único cômodo, o jogador deve se mover entre várias salas para realizar tarefas mecânicas e resolver problemas técnicos enquanto evita animatrônicos altamente perigosos. Com uma estrutura narrativa mais cinematográfica e interativa, Sister Location aprofunda o enredo da franquia, revelando novos personagens, segredos perturbadores e ligações com eventos anteriores da série.',
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
                    left: 12,
                    top: 644,
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
                    left: 29,
                    top: 667,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Desenvolvedor e Publisher:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Scott Cawthon\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Motor Gráfico:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w700,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Clickteam Fusion 2.5\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Compositor',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ': Leon Riskin',
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
                    left: 12,
                    top: 751,
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
                    left: 29,
                    top: 771,
                    child: SizedBox(
                      width: 354,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'O jogo foi desenvolvido e publicado de forma independente por ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Scott Cawthon',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto Flex',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: ", criador da série Five Nights at Freddy's .",
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
                    left: 12,
                    top: 829,
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
                    left: 29,
                    top: 849,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Gênero Principal:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Survival Horror\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Subgênero:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' Point-and-click',
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
                    left: 12,
                    top: 915,
                    child: Text(
                      'Datas de Lançamento:',
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
                    left: 29,
                    top: 935,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'PC (Steam):',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' 7 de outubro de 2016\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Android:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' 22 de dezembro de 2016\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'iOS:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' 3 de janeiro de 2017\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Nintendo Switch:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' 18 de junho de 2020\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'Xbox One:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' 10 de julho de 2020\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: 'PlayStation 4:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto Flex',
                              fontWeight: FontWeight.w900,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: ' 21 de julho de 2020',
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
                    left: 12,
                    top: 1073,
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
                    left: 29,
                    top: 1093,
                    child: SizedBox(
                      width: 357,
                      child: Text(
                        'O jogo apresenta um elenco de vozes que contribui significativamente para a atmosfera do jogo. Embora a lista completa de dubladores não seja amplamente divulgada, destaca-se a atuação de Heather Masters como a voz da animatrônica Circus Baby, que foi amplamente elogiada pela crítica.',
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
                    left: 12,
                    top: 1207,
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
                    left: 29,
                    top: 1227,
                    child: Text(
                      'https://www.youtube.com/watch?v=7g9h5xZJ9Jk',
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
                    left: 12,
                    top: 1275,
                    child: Text(
                      'Site Oficial:',
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
                    left: 29,
                    top: 1295,
                    child: Text(
                      'https://fnafworld.com/',
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
                    left: 22,
                    top: 1343,
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
                    left: 20,
                    top: 1362,
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
                    left: 12,
                    top: 1370,
                    child: Image.asset(
                      "src/assets/imgs/image - Portas.png",
                      width: 85.58,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 107.58,
                    top: 1391,
                    child: Text(
                      'Portas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 108,
                    top: 1409,
                    child: SizedBox(
                      width: 292,
                      child: Text(
                        'O jogador deve controlar as portas para bloquear a entrada dos animatrônicos, mas o uso excessivo consome energia e pode deixar o escritório vulnerável.',
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
                    left: 196,
                    top: 1502,
                    child: Image.asset(
                      "src/assets/imgs/image - Camera.png",
                      width: 204.44,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 132,
                    top: 1505,
                    child: Text(
                      'Câmera',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 1523,
                    child: SizedBox(
                      width: 174,
                      child: Text(
                        'As câmeras de segurança permitem monitorar os animatrônicos, mas exigem energia e não fornecem visão completa do ambiente, deixando o jogador vulnerável a surpresas.',
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
                    left: 12,
                    top: 1635,
                    child: Image.asset(
                      "src/assets/imgs/Gif Foxy - Jumpscare.gif",
                      width: 153.33,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 175.33,
                    top: 1656,
                    child: Text(
                      'Jumpscare',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 175,
                    top: 1674,
                    child: SizedBox(
                      width: 225,
                      child: Text(
                        'Quando o jogador falha em evitar um animatrônico, ele é atacado por um jumpscare, que resulta em morte instantânea e reinício do turno.',
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
                    left: 261,
                    top: 1767,
                    child: Image.asset(
                      "src/assets/imgs/image - Choque.png",
                      width: 139,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 198,
                    top: 1781,
                    child: Text(
                      'Choque',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 1799,
                    child: SizedBox(
                      width: 239,
                      child: Text(
                        'Em Sister Location, o jogador usa um mecanismo de choque elétrico para repelir certos animatrônicos, mas o tempo de recarga e o risco de falhas tornam essa ação arriscada.',
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
                    left: 12,
                    top: 1900,
                    child: Image.asset(
                      "src/assets/imgs/image - Audio.png",
                      width: 193.25,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 215.25,
                    top: 1907,
                    child: Text(
                      'Aúdio',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 215,
                    top: 1925,
                    child: SizedBox(
                      width: 185,
                      child: Text(
                        'Sons, como risadas ou passos, servem para alertar o jogador sobre a proximidade dos animatrônicos, mas a interpretação errada pode resultar em ataques inesperados.',
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
                    left: 90,
                    top: 2025,
                    child: Text(
                      'Horas / Noites',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Roboto Flex',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 196,
                    top: 2032,
                    child: Image.asset(
                      "src/assets/imgs/image - Data_Hora.png",
                      width: 204.23,
                      height: 115,
                    )
                  ),
                  Positioned(
                    left: 12,
                    top: 2043,
                    child: SizedBox(
                      width: 174,
                      child: Text(
                        'O jogo é dividido em turnos, geralmente de uma noite de 6 horas, com o objetivo de sobreviver até o amanhecer, gerenciando recursos limitados e enfrentando animatrônicos cada vez mais agressivos à medida que as noites avançam.',
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
        )
      )
    );
  }
}