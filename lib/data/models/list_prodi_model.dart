import 'package:flutter/src/material/dropdown.dart';

class ListProdi {
  ListProdi({
    required this.status,
    required this.messsage,
    required this.prodi,
  });

  final String status;
  final String messsage;
  final List<Prodi> prodi;

  factory ListProdi.fromJson(Map<String, dynamic> json) => ListProdi(
        status: json["status"],
        messsage: json["messsage"],
        prodi: List<Prodi>.from(json["prodi"].map((x) => Prodi.fromJson(x))),
      );

  map(DropdownMenuItem<String> Function(dynamic item) param0) {}
}

class Prodi {
  Prodi({
    required this.prodiId,
    required this.fakultasId,
    required this.prodiNama,
  });

  final int prodiId;
  final int fakultasId;
  final String prodiNama;

  factory Prodi.fromJson(Map<String, dynamic> json) => Prodi(
        prodiId: json["prodi_id"],
        fakultasId: json["fakultas_id"],
        prodiNama: json["prodi_nama"],
      );
}
