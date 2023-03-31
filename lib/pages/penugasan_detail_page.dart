import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class PenugasanDetailPage extends StatelessWidget {
  const PenugasanDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E2EB),
      appBar: AppBar(
        title: Text("Detail Penugasan"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          "Kepanitiaan MUBES XII UKM ORBIT",
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
                    "Tanggal",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "7 Januari 2022 - 9 Januari 2022",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Lokasi",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Sekretariat SEMA-U",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Nama",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Fajri Rinaldi Chan",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Divisi",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Koor Perlengkapan",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Penugasan Oleh",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "UKM ORBIT",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Mengetahui",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Firdaus Anas, S.Pd, M.Kom",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "Surat Keputusan",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Keputusan Pengurus Unit Kegiatan Mahasiswa Organisasi Berbasis IT (ORBIT) UIN Sjech M.Djamil Djambek Bukittinggi Periode 2023, Nomor : 001/SK-PP/UPGRADING/UKM-ORBIT/UINSMDD-BKT/III/2023 ",
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
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
                                width: 143,
                                height: 33,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xffC2C3D0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Surat Keputusan",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "001/SK-PP/UPGRADING/UKM-ORBIT/UINSMDD-BKT/III/2023 ",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.qr_code_2,
                          color: PrimaryColor,
                          size: 60,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  width: 92,
                  height: 92,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Icon(
                        Icons.edit_document,
                        color: PrimaryColor,
                        size: 40,
                      ),
                      SizedBox(height: 5),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Color(0xffC2C3D0),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Catatan",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
