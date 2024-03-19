import 'package:intl/intl.dart';

class ProfileAnggota {
  ProfileAnggota({
    required this.status,
    required this.message,
    required this.profile,
  });

  final String status;
  final String message;
  final Profile profile;

  factory ProfileAnggota.fromJson(Map<String, dynamic> json) => ProfileAnggota(
        status: json["status"],
        message: json["message"],
        profile: Profile.fromJson(json["profile"]),
      );
}

class Profile {
  Profile({
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
    required this.tanggalMendaftar,
    required this.active,
    required this.fakulta,
    required this.prodi,
    required this.bidang,
  });

  final int nim;
  final String foto;
  final String nama;
  final String tempatLahir;
  final String tanggalLahir;
  final bool jenisKelamin;
  final String alamat;
  final int fakultasId;
  final int prodiId;
  final int bidangId;
  final String noTelp;
  final String email;
  final String password;
  final String tanggalMendaftar;
  final bool active;
  final Fakulta fakulta;
  final Prodi prodi;
  final Bidang bidang;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        nim: json["nim"],
        foto: json["foto"],
        nama: json["nama"],
        tempatLahir: json["tempat_lahir"],
        tanggalLahir: DateFormat.yMMMMd("in_ID")
            .format(DateTime.parse(json["tanggal_lahir"])),
        jenisKelamin: json["jenis_kelamin"],
        alamat: json["alamat"],
        fakultasId: json["fakultas_id"],
        prodiId: json["prodi_id"],
        bidangId: json["bidang_id"],
        noTelp: json["no_telp"],
        email: json["email"],
        password: json["password"],
        tanggalMendaftar: DateFormat.yMd()
            .add_jm()
            .format(DateTime.parse(json["tanggal_mendaftar"])),
        active: json["active"],
        fakulta: Fakulta.fromJson(json["fakulta"]),
        prodi: Prodi.fromJson(json["prodi"]),
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

  Map<String, dynamic> toJson() => {
        "bidang_id": bidangId,
        "bidang_nama": bidangNama,
      };
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
