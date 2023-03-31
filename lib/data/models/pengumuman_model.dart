

class Pengumuman {
    Pengumuman({
        required this.status,
        required this.messsage,
        required this.pengumuman,
    });

    final String status;
    final String messsage;
    final List<PengumumanElement> pengumuman;

    factory Pengumuman.fromJson(Map<String, dynamic> json) => Pengumuman(
        status: json["status"],
        messsage: json["messsage"] ?? "tol",
        pengumuman: List<PengumumanElement>.from(json["pengumuman"].map((x) => PengumumanElement.fromJson(x))),
    );

}

class PengumumanElement {
    PengumumanElement({
        required this.pengumumanId,
        required this.pengumumanJudul,
        required this.pengumumanDeskripsi,
        required this.pengumumanTanggal,
        required this.pengumumanPembuat,
    });

    final int pengumumanId;
    final String pengumumanJudul;
    final String pengumumanDeskripsi;
    final DateTime pengumumanTanggal;
    final String pengumumanPembuat;

    factory PengumumanElement.fromJson(Map<String, dynamic> json) => PengumumanElement(
        pengumumanId: json["pengumuman_id"],
        pengumumanJudul: json["pengumuman_judul"],
        pengumumanDeskripsi: json["pengumuman_deskripsi"],
        pengumumanTanggal: DateTime.parse(json["pengumuman_tanggal"]),
        pengumumanPembuat: json["pengumuman_pembuat"],
    );

}
