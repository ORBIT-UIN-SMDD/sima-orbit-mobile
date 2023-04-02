import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/kompetensi_provider.dart';

class KompetensiDetailPage extends StatelessWidget {
  const KompetensiDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2EB),
      appBar: AppBar(
        title: Text("Detail Kompetensi"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Consumer<KompetensiProvider>(
            builder: (context, state, child) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                state
                                    .kompetensi!
                                    .kompetensi[state.selectkompetensi]
                                    .kompetensiNama,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              SizedBox(height: 15),
                              Container(
                                width: double.infinity,
                                height: 2,
                                color: PrimaryColor,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Bidang",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 3),
                        Text(
                          state.kompetensi!.kompetensi[state.selectkompetensi]
                              .bidang.bidangNama,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Tanggal Dikeluarkan",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 3),
                        Text(
                          state.kompetensi!.kompetensi[state.selectkompetensi]
                              .kompetensiTanggal
                              .toIso8601String(),
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Nama",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 3),
                        Text(
                          state.kompetensi!.kompetensi[state.selectkompetensi]
                              .kompetensiUntuk,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "Di verifikasi Oleh",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 3),
                        Text(
                          state.kompetensi!.kompetensi[state.selectkompetensi]
                              .kompetensiDiverifikasiOleh,
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        SizedBox(height: 10)
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 92,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                width: double.infinity,
                                height: 33,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xffC2C3D0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Sertifikat",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  state
                                      .kompetensi!
                                      .kompetensi[state.selectkompetensi]
                                      .sertifkatNo,
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Image.asset(
                            "assets/icons/sertifikat.png",
                            width: 60,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
