// lib/models/fnaf.dart
class FnafGame {
  final String jogo;
  final String nome;
  final String epoca;
  final List<String> animatronics;
  final List<String> comercio;

  FnafGame({
    required this.jogo,
    required this.nome,
    required this.epoca,
    required this.animatronics,
    required this.comercio,
  });

  factory FnafGame.fromJson(Map<String, dynamic> json) {
    final local = (json['Local'] ?? {}) as Map<String, dynamic>;

    // Normaliza animatronics (pode ser lista de strings ou lista de objetos)
    final rawAnim = local['animatronics'];
    final List<String> animList = [];
    if (rawAnim is List) {
      for (var item in rawAnim) {
        if (item is String) {
          animList.add(item);
        } else if (item is Map && item['nome'] != null) {
          animList.add(item['nome'].toString());
        } else {
          animList.add(item.toString());
        }
      }
    }

    // Normaliza comércio (pode ser lista ou string)
    final rawComm = local['comércio'];
    final List<String> commList = [];
    if (rawComm is List) {
      for (var c in rawComm) {
        commList.add(c.toString());
      }
    } else if (rawComm != null) {
      commList.add(rawComm.toString());
    }

    return FnafGame(
      jogo: (json['jogo'] ?? '').toString(),
      nome: (local['nome'] ?? '').toString(),
      epoca: (local['época'] ?? '').toString(),
      animatronics: animList,
      comercio: commList,
    );
  }
}
