class Profile {
  Profile({
    required this.status,
    required this.message,
    required this.profile,
  });

  final String status;
  final String message;
  final ProfileClass profile;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        status: json["status"],
        message: json["message"],
        profile: ProfileClass.fromJson(json["profile"]),
      );
}

class ProfileClass {
  ProfileClass({
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
    required this.fakulta,
    required this.prodi,
    required this.bidang,
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
  final Fakulta fakulta;
  final Prodi prodi;
  final Bidang bidang;

  factory ProfileClass.fromJson(Map<String, dynamic> json) => ProfileClass(
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
        fakulta: Fakulta.fromJson(json["fakulta"]),
        prodi: Prodi.fromJson(json["prodi"]),
        bidang: Bidang.fromJson(json["bidang"]),
      );

  Map<String, dynamic> toJson() => {
        "nim": nim,
        "foto": foto,
        "nama": nama,
        "tempat_lahir": tempatLahir,
        "tanggal_lahir":
            "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
        "jenis_kelamin": jenisKelamin,
        "alamat": alamat,
        "fakultas_id": fakultasId,
        "prodi_id": prodiId,
        "bidang_id": bidangId,
        "no_telp": noTelp,
        "email": email,
        "password": password,
        "periode": periode,
        "active": active,
      };
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
