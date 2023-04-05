class ProfileAlumni {
  ProfileAlumni({
    required this.status,
    required this.message,
    required this.profile,
  });

  final String status;
  final String message;
  final Profile profile;

  factory ProfileAlumni.fromJson(Map<String, dynamic> json) => ProfileAlumni(
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
    required this.noTelp,
    required this.email,
    required this.password,
    required this.periode,
    required this.pekerjaan,
    required this.domisili,
    required this.golonganDarah,
  });

  final int nim;
  final String foto;
  final String nama;
  final String tempatLahir;
  final String tanggalLahir;
  final bool jenisKelamin;
  final String alamat;
  final String noTelp;
  final String email;
  final String password;
  final int periode;
  final String pekerjaan;
  final String domisili;
  final String golonganDarah;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        nim: json["nim"],
        foto: json["foto"],
        nama: json["nama"],
        tempatLahir: json["tempat_lahir"],
        tanggalLahir: json["tanggal_lahir"],
        jenisKelamin: json["jenis_kelamin"],
        alamat: json["alamat"],
        noTelp: json["no_telp"],
        email: json["email"],
        password: json["password"],
        periode: json["periode"],
        pekerjaan: json["pekerjaan"],
        domisili: json["domisili"],
        golonganDarah: json["golongan_darah"],
      );
}
