// lib/pages/page_fnaf_json.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../models/fnaf.dart';

class PageFnafJson extends StatefulWidget {
  const PageFnafJson({Key? key}) : super(key: key);

  @override
  State<PageFnafJson> createState() => _PageFnafJsonState();
}

class _PageFnafJsonState extends State<PageFnafJson> {
  late Future<List<FnafGame>> _jogosFuture;

  Future<List<FnafGame>> _loadFnaf() async {
    final raw = await rootBundle.loadString('assets/fnaf.json');
    final List<dynamic> decoded = json.decode(raw) as List<dynamic>;
    return decoded.map((e) => FnafGame.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  void initState() {
    super.initState();
    _jogosFuture = _loadFnaf();
  }

  @override
  Widget build(BuildContext context) {
    final spacing = 12.0;

    return Scaffold(
      // Usamos body com Column para seguir o padrão que você pediu
      body: Column(
        children: [
          // --- Cabeçalho (idêntico ao que você informou) ---
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
                // Campo de busca (apenas visual, igual ao padrão)
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
          // --- Conteúdo principal ---
          Expanded(
            child: FutureBuilder<List<FnafGame>>(
              future: _jogosFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(child: Text('Erro ao carregar: ${snapshot.error}'));
                }

                final jogos = snapshot.data ?? [];

                return LayoutBuilder(builder: (context, constraints) {
                  final horizontalPadding = constraints.maxWidth > 600 ? 24.0 : 12.0;
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Título e resumo
                        Text(
                          'Lista de jogos (vinda do JSON)',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 6),
                        Text('Total: ${jogos.length} jogos'),
                        SizedBox(height: spacing),
                        // Lista rolável ocupa o resto da tela
                        Expanded(
                          child: jogos.isEmpty
                              ? const Center(child: Text('Nenhum jogo encontrado.'))
                              : ListView.separated(
                                  itemCount: jogos.length,
                                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                                  itemBuilder: (context, index) {
                                    final jogo = jogos[index];
                                    return Card(
                                      elevation: 2,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      child: ListTile(
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        title: Text(jogo.jogo, style: const TextStyle(fontWeight: FontWeight.w600)),
                                        subtitle: Text('${jogo.nome} • ${jogo.epoca}'),
                                        trailing: const Icon(Icons.chevron_right),
                                        onTap: () => _showDetails(context, jogo),
                                      ),
                                    );
                                  },
                                ),
                        ),
                      ],
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showDetails(BuildContext context, FnafGame jogo) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(jogo.jogo),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Local: ${jogo.nome}'),
                Text('Época: ${jogo.epoca}'),
                const SizedBox(height: 8),
                const Text('Animatronics:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                ...jogo.animatronics.map((a) => Text('• $a')),
                const SizedBox(height: 8),
                const Text('Comércio:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                ...jogo.comercio.map((c) => Text('• $c')),
              ],
            ),
          ),
          actions: [
            TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Fechar')),
          ],
        );
      },
    );
  }
}
