

class Register {
    Register({
        required this.status,
        required this.message,
        required this.result,
    });

    final String status;
    final String message;
    final Result result;

    factory Register.fromJson(Map<String, dynamic> json) => Register(
        status: json["status"],
        message: json["message"],
        result: Result.fromJson(json["result"]),
    );

}

class Result {
    Result({
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
    });

    final String nim;
    final String foto;
    final String nama;
    final String tempatLahir;
    final DateTime tanggalLahir;
    final String jenisKelamin;
    final String alamat;
    final String fakultasId;
    final String prodiId;
    final String bidangId;
    final String noTelp;
    final String email;
    final String password;
    final DateTime tanggalMendaftar;
    final bool active;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
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
        tanggalMendaftar: DateTime.parse(json["tanggal_mendaftar"]),
        active: json["active"],
    );
}
