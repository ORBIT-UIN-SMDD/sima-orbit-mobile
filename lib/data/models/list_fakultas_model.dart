class ListFakultas {
  ListFakultas({
    required this.status,
    required this.messsage,
    required this.fakultas,
  });

  final String status;
  final String messsage;
  final List<Fakulta> fakultas;

  factory ListFakultas.fromJson(Map<String, dynamic> json) => ListFakultas(
        status: json["status"],
        messsage: json["messsage"],
        fakultas: List<Fakulta>.from(
            json["fakultas"].map((x) => Fakulta.fromJson(x))),
      );
}

class Fakulta {
  Fakulta({
    required this.fakultasId,
    required this.fakultasNama,
  });

  final int fakultasId;
  final String fakultasNama;

  factory Fakulta.fromJson(Map<String, dynamic> json) => Fakulta(
        fakultasId: json["fakultas_id"],
        fakultasNama: json["fakultas_nama"],
      );
}
