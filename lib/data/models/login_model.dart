class Login {
    Login({
        required this.status,
        required this.messsage,
        required this.token,
        required this.nim,
    });

    final String status;
    final String messsage;
    final String token;
    final int nim;

    factory Login.fromJson(Map<String, dynamic> json) => Login(
        status: json["status"],
        messsage: json["messsage"],
        token: json["token"],
        nim: json["nim"],
    );

}
