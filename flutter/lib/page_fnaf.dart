import 'package:flutter/material.dart';

class PageFnaf extends StatelessWidget {
  const PageFnaf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Barra superior
              Container(
                color: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  children: [
                    // Botão voltar
                    IconButton(
                      iconSize: 50,
                      onPressed: () => Navigator.pop(context),
                      icon: Image.asset("src/assets/imgs/cracked_alien_skull.png"),
                    ),
                    const SizedBox(width: 16),
                    // Campo de busca
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
                    const SizedBox(width: 16),
                    Image.asset("src/assets/imgs/menu.png", width: 50, height: 50),
                  ],
                ),
              ),

              // Imagem principal
              Image.asset("src/assets/imgs/fnaf.png", width: double.infinity, height: 217, fit: BoxFit.cover),

              const SizedBox(height: 16),
              Center(
                child: Text(
                  'FNAF',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Roboto Flex',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Five Nights at Freddy's (FNAF)",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      TextSpan(
                        text: ' é uma série de jogos de terror onde o jogador assume o papel de um vigia de segurança em uma pizzaria abandonada, tendo que sobreviver durante a noite enquanto animatrônicos possessos tentam atacá-lo. O objetivo é monitorar as câmeras de segurança, controlar portas e luzes para se proteger, enquanto os animatrônicos se aproximam cada vez mais. A franquia é conhecida por sua atmosfera tensa, jumpscares e narrativa misteriosa envolvendo os eventos sombrios do local.\nEm Five Nights at Freddy\'s: Sister Location, o conceito tradicional da série é expandido. Desta vez, o jogador assume o papel de um técnico de manutenção recém-contratado na Circus Baby\'s Entertainment and Rental, uma instalação subterrânea ligada à pizzaria original. Em vez de permanecer em um único cômodo, o jogador deve se mover entre várias salas para realizar tarefas mecânicas e resolver problemas técnicos enquanto evita animatrônicos altamente perigosos. Com uma estrutura narrativa mais cinematográfica e interativa, Sister Location aprofunda o enredo da franquia, revelando novos personagens, segredos perturbadores e ligações com eventos anteriores da série.',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      // Continue os TextSpan conforme o original
                    ],
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Roboto Flex',
                  ),
                ),
              ),

              const SizedBox(height: 24),
              // Direção e Produção
              sectionTitle('Direção e Produção'),
              sectionRichText([
                boldText('Desenvolvedor e Publisher:'),
                normalText(' Scott Cawthon\n'),
                boldText('Motor Gráfico:'),
                normalText(' Clickteam Fusion 2.5\n'),
                boldText('Compositor:'),
                normalText(' Leon Riskin'),
              ]),

              const SizedBox(height: 16),
              // Empresa/Estúdio
              sectionTitle('Empresa/Estúdio'),
              sectionRichText([
                normalText('O jogo foi desenvolvido e publicado de forma independente por '),
                boldText('Scott Cawthon'),
                normalText(', criador da série Five Nights at Freddy\'s .'),
              ]),

              const SizedBox(height: 16),
              // Gênero
              sectionTitle('Gênero'),
              sectionRichText([
                boldText('Gênero Principal:'),
                normalText(' Survival Horror\n'),
                boldText('Subgênero:'),
                normalText(' Point-and-click'),
              ]),

              const SizedBox(height: 16),
              // Datas de Lançamento
              sectionTitle('Datas de Lançamento'),
              sectionRichText([
                boldText('PC (Steam):'), normalText(' 7 de outubro de 2016\n'),
                boldText('Android:'), normalText(' 22 de dezembro de 2016\n'),
                boldText('iOS:'), normalText(' 3 de janeiro de 2017\n'),
                boldText('Nintendo Switch:'), normalText(' 18 de junho de 2020\n'),
                boldText('Xbox One:'), normalText(' 10 de julho de 2020\n'),
                boldText('PlayStation 4:'), normalText(' 21 de julho de 2020'),
              ]),

              const SizedBox(height: 16),
              // Elenco
              sectionTitle('Elenco'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Text(
                  'O jogo apresenta um elenco de vozes que contribui significativamente para a atmosfera do jogo. Embora a lista completa de dubladores não seja amplamente divulgada, destaca-se a atuação de Heather Masters como a voz da animatrônica Circus Baby, que foi amplamente elogiada pela crítica.',
                  style: const TextStyle(fontSize: 12, fontFamily: 'Roboto Flex', color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ),

              const SizedBox(height: 16),
              // Trailer e site
              sectionTitle('Trailer'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Text('https://www.youtube.com/watch?v=7g9h5xZJ9Jk'),
              ),
              const SizedBox(height: 16),
              sectionTitle('Site Oficial'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Text('https://fnafworld.com/'),
              ),

              const SizedBox(height: 16),
              // MECÂNICAS
              sectionTitle('MECÂNICAS'),
              const SizedBox(height: 8),
              // Exemplo de mecânicas (Portas, Câmera, Jumpscare etc.)
              mechanicsItem(
                imagePath: "src/assets/imgs/portas.png",
                title: "Portas",
                description: "O jogador deve controlar as portas para bloquear a entrada dos animatrônicos, mas o uso excessivo consome energia e pode deixar o escritório vulnerável."
              ),
              mechanicsItem(
                imagePath: "src/assets/imgs/camera.png",
                title: "Câmera",
                description: "As câmeras de segurança permitem monitorar os animatrônicos, mas exigem energia e não fornecem visão completa do ambiente, deixando o jogador vulnerável a surpresas."
              ),
              mechanicsItem(
                imagePath: "src/assets/imgs/foxy_jumpscare.gif",
                title: "Jumpscare",
                description: "Quando o jogador falha em evitar um animatrônico, ele é atacado por um jumpscare, que resulta em morte instantânea e reinício do turno."
              ),
              mechanicsItem(
                imagePath: "src/assets/imgs/choque.png",
                title: "Choque",
                description: "Em Sister Location, o jogador usa um mecanismo de choque elétrico para repelir certos animatrônicos, mas o tempo de recarga e o risco de falhas tornam essa ação arriscada."
              ),
              mechanicsItem(
                imagePath: "src/assets/imgs/audio.png",
                title: "Áudio",
                description: "Sons, como risadas ou passos, servem para alertar o jogador sobre a proximidade dos animatrônicos, mas a interpretação errada pode resultar em ataques inesperados."
              ),
              mechanicsItem(
                imagePath: "src/assets/imgs/data_hora.png",
                title: "Horas / Noites",
                description: "O jogo é dividido em turnos, geralmente de uma noite de 6 horas, com o objetivo de sobreviver até o amanhecer, gerenciando recursos limitados e enfrentando animatrônicos cada vez mais agressivos à medida que as noites avançam."
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // Widgets auxiliares
  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'Roboto Flex',
          color: Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  Widget sectionRichText(List<TextSpan> spans) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Text.rich(
        TextSpan(children: spans),
        style: const TextStyle(fontSize: 12, fontFamily: 'Roboto Flex', color: Colors.black),
      ),
    );
  }

  TextSpan boldText(String text) => TextSpan(text: text, style: const TextStyle(fontWeight: FontWeight.w900, color: Colors.black));
  TextSpan normalText(String text) => TextSpan(text: text, style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black));

  Widget mechanicsItem({required String imagePath, required String title, required String description}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, width: 100, height: 100),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 14, fontFamily: 'Roboto Flex')),
                const SizedBox(height: 4),
                Text(description, style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 12, fontFamily: 'Roboto Flex')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
