import 'package:intl/intl.dart';

class Kompetensi {
  Kompetensi({
    required this.status,
    required this.message,
    required this.kompetensi,
  });

  final String status;
  final String message;
  final List<KompetensiElement> kompetensi;

  factory Kompetensi.fromJson(Map<String, dynamic> json) => Kompetensi(
        status: json["status"],
        message: json["message"],
        kompetensi: List<KompetensiElement>.from(
            json["Kompetensi"].map((x) => KompetensiElement.fromJson(x))),
      );
}

class KompetensiElement {
  KompetensiElement({
    required this.sertifkatNo,
    required this.nim,
    required this.bidangId,
    required this.kompetensiNama,
    required this.kompetensiUntuk,
    required this.kompetensiDiverifikasiOleh,
    required this.kompetensiTanggal,
    required this.kompetensiSertifikat,
    required this.bidang,
  });

  final String sertifkatNo;
  final int nim;
  final int bidangId;
  final String kompetensiNama;
  final String kompetensiUntuk;
  final String kompetensiDiverifikasiOleh;
  final String kompetensiTanggal;
  final String kompetensiSertifikat;
  final Bidang bidang;

  factory KompetensiElement.fromJson(Map<String, dynamic> json) =>
      KompetensiElement(
        sertifkatNo: json["sertifkat_no"],
        nim: json["nim"],
        bidangId: json["bidang_id"],
        kompetensiNama: json["kompetensi_nama"],
        kompetensiUntuk: json["kompetensi_untuk"],
        kompetensiDiverifikasiOleh: json["kompetensi_diverifikasi_oleh"],
        kompetensiTanggal: DateFormat.yMMMMd("in_ID")
            .format(DateTime.parse(json["kompetensi_tanggal"])),
        kompetensiSertifikat: json["kompetensi_sertifikat"],
        bidang: Bidang.fromJson(json["bidang"]),
      );
}

class Bidang {
  Bidang({
    required this.bidangId,
    required this.bidangNama,
  });

  final int bidangId;
  final String bidangNama;

  factory Bidang.fromJson(Map<String, dynamic> json) => Bidang(
        bidangId: json["bidang_id"],
        bidangNama: json["bidang_nama"],
      );
}
