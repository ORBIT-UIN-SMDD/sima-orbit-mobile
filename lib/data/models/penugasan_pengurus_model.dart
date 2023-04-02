import 'package:intl/intl.dart';

class PenugasanPengurus {
  PenugasanPengurus({
    required this.status,
    required this.message,
    required this.penugasan,
  });

  final String status;
  final String message;
  final List<PenugasanElement> penugasan;

  factory PenugasanPengurus.fromJson(Map<String, dynamic> json) =>
      PenugasanPengurus(
        status: json["status"],
        message: json["message"],
        penugasan: List<PenugasanElement>.from(
            json["penugasan"].map((x) => PenugasanElement.fromJson(x))),
      );
}

class PenugasanElement {
  PenugasanElement({
    required this.id,
    required this.penugasanId,
    required this.nim,
    required this.bidangTugas,
    required this.ditambahkanPada,
    required this.penguru,
    required this.penugasan,
  });

  final int id;
  final int penugasanId;
  final int nim;
  final String bidangTugas;
  final DateTime ditambahkanPada;
  final Penguru penguru;
  final PenugasanPenugasan penugasan;

  factory PenugasanElement.fromJson(Map<String, dynamic> json) =>
      PenugasanElement(
        id: json["id"],
        penugasanId: json["penugasan_id"],
        nim: json["nim"],
        bidangTugas: json["bidang_tugas"],
        ditambahkanPada: DateTime.parse(json["ditambahkan_pada"]),
        penguru: Penguru.fromJson(json["penguru"]),
        penugasan: PenugasanPenugasan.fromJson(json["penugasan"]),
      );
}

class Penguru {
  Penguru({
    required this.nim,
    required this.foto,
    required this.nama,
    required this.tempatLahir,
    required this.tanggalLahir,
    required this.jenisKelamin,
    required this.alamat,
    required this.fakultasId,
    required this.prodiId,
    required this.bidangId,
    required this.noTelp,
    required this.email,
    required this.password,
    required this.periode,
    required this.active,
  });

  final int nim;
  final String foto;
  final String nama;
  final String tempatLahir;
  final DateTime tanggalLahir;
  final bool jenisKelamin;
  final String alamat;
  final int fakultasId;
  final int prodiId;
  final int bidangId;
  final String noTelp;
  final String email;
  final String password;
  final int periode;
  final bool active;

  factory Penguru.fromJson(Map<String, dynamic> json) => Penguru(
        nim: json["nim"],
        foto: json["foto"],
        nama: json["nama"],
        tempatLahir: json["tempat_lahir"],
        tanggalLahir: DateTime.parse(json["tanggal_lahir"]),
        jenisKelamin: json["jenis_kelamin"],
        alamat: json["alamat"],
        fakultasId: json["fakultas_id"],
        prodiId: json["prodi_id"],
        bidangId: json["bidang_id"],
        noTelp: json["no_telp"],
        email: json["email"],
        password: json["password"],
        periode: json["periode"],
        active: json["active"],
      );
}

class PenugasanPenugasan {
  PenugasanPenugasan({
    required this.penugasanId,
    required this.penugasanNama,
    required this.penugasanDeskripsi,
    required this.penugasanMulai,
    required this.penugasanSelesai,
    required this.penugasanTempat,
    required this.penugasanWaktu,
    required this.penugasanOleh,
    required this.penugasanNoSurat,
    required this.penugasanSk,
    required this.penugasanDibuat,
  });

  final int penugasanId;
  final String penugasanNama;
  final String penugasanDeskripsi;
  final String penugasanMulai;
  final String penugasanSelesai;
  final String penugasanTempat;
  final String penugasanWaktu;
  final String penugasanOleh;
  final String penugasanNoSurat;
  final String penugasanSk;
  final DateTime penugasanDibuat;

  // final f = new DateFormat('yyyy-MM-dd hh:mm');
  factory PenugasanPenugasan.fromJson(Map<String, dynamic> json) =>
      PenugasanPenugasan(
        penugasanId: json["penugasan_id"],
        penugasanNama: json["penugasan_nama"],
        penugasanDeskripsi: json["penugasan_deskripsi"],
        penugasanMulai: DateFormat.yMMMEd()
            .format(DateTime.parse(json["penugasan_mulai"])),  
        penugasanSelesai: DateFormat.yMMMEd()
            .format(DateTime.parse(json["penugasan_selesai"])),
        penugasanTempat: json["penugasan_tempat"],
        penugasanWaktu: json["penugasan_waktu"],
        penugasanOleh: json["penugasan_oleh"],
        penugasanNoSurat: json["penugasan_no_surat"],
        penugasanSk: json["penugasan_sk"],
        penugasanDibuat: DateTime.parse(json["penugasan_dibuat"]),
      );
}
