import 'package:intl/intl.dart';

class Agenda {
  Agenda({
    required this.status,
    required this.message,
    required this.agenda,
  });

  final String status;
  final String message;
  final List<AgendaElement> agenda;

  factory Agenda.fromJson(Map<String, dynamic> json) => Agenda(
        status: json["status"],
        message: json["message"],
        agenda: List<AgendaElement>.from(
            json["agenda"].map((x) => AgendaElement.fromJson(x))),
      );
}

class AgendaElement {
  AgendaElement({
    required this.id,
    required this.agendaNama,
    required this.agendaDeskripsi,
    required this.agendaMulai,
    required this.agendaSelesai,
    required this.agendaTempat,
    required this.agendaWaktu,
    required this.agendaKeterangan,
    required this.agendaPembuat,
    required this.agendaDibuat,
  });

  final int id;
  final String agendaNama;
  final String agendaDeskripsi;
  final String agendaMulai;
  final String agendaSelesai;
  final String agendaTempat;
  final String agendaWaktu;
  final String agendaKeterangan;
  final String agendaPembuat;
  final DateTime agendaDibuat;

  factory AgendaElement.fromJson(Map<String, dynamic> json) => AgendaElement(
        id: json["id"],
        agendaNama: json["agenda_nama"],
        agendaDeskripsi: json["agenda_deskripsi"],
        agendaMulai:
            DateFormat.yMMMEd().format(DateTime.parse(json["agenda_mulai"])),
        agendaSelesai:
            DateFormat.yMMMEd().format(DateTime.parse(json["agenda_selesai"])),
        agendaTempat: json["agenda_tempat"],
        agendaWaktu: json["agenda_waktu"],
        agendaKeterangan: json["agenda_keterangan"],
        agendaPembuat: json["agenda_pembuat"],
        agendaDibuat: DateTime.parse(json["agenda_dibuat"]),
      );
}
