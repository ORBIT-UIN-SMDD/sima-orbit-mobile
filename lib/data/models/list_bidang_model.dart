class ListBidang {
  ListBidang({
    required this.status,
    required this.messsage,
    required this.bidang,
  });

  final String status;
  final String messsage;
  final List<Bidang> bidang;

  factory ListBidang.fromJson(Map<String, dynamic> json) => ListBidang(
        status: json["status"],
        messsage: json["messsage"],
        bidang:
            List<Bidang>.from(json["bidang"].map((x) => Bidang.fromJson(x))),
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
