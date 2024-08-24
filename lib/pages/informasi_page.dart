import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informasi"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 18, left: 18, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logoorbit.png",
                width: 300,
              ),
              Text(
                "Unit Kegiatan Mahasiswa Organisasi berbasis IT (UKM ORBIT) yang sebelumnya adalah organisasi komunitas belajar dari jurusan Pendidikan Teknik Informatika dan Komputer yang dibentuk dari usulan Bapak Dr.Supratman Zakir M.Pd, M.Kom, Bapak Sarwo Derta dan Bapak Febi Edwardi yang didirikan oleh angkatan 2012",
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              SizedBox(height: 10),
              Text(
                "VISI",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                "Menjadi Pusat Pengembangan, Pengelolaan, dan Pelayanan Teknologi Informasi dan Komunikasi Yang Terkemuka Secara Internasional",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "MISI",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("\u2022", style: TextStyle(fontSize: 18)), //bullet text
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                      "Mengembangkan Teknologi Informasi dan Komunikasi Sesuai Perkembangan Zaman"),
                )
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("\u2022", style: TextStyle(fontSize: 18)), //bullet text
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                      "Mengelola Teknologi Informasi dan Komunikasi Secara Baik dan Terencana Untuk Mendukung Penyelenggaraan Tri Darma Perguruan Tinggi"),
                )
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("\u2022", style: TextStyle(fontSize: 18)), //bullet text
                SizedBox(width: 10),
                Expanded(
                  child:
                      Text("Memberikan Pelayanan Secara Baik dan Berkualitas"),
                )
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("\u2022", style: TextStyle(fontSize: 18)), //bullet text
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                      "Menjalin Kerja Sama Dalam Bidang Teknologi dan Komunikasi Dengan Intra Terkait"),
                )
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("\u2022", style: TextStyle(fontSize: 18)), //bullet text
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                      "Menjadikan Organisasi Ini Menjadi Keluarga Kedua Dan Menegakkan Sosialisasi Yang tinggi"),
                )
              ]),
              SizedBox(height: 10),
              Text(
                "Polis Umum",
                style: TextStyle(
                    color: PolisUmumColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: PolisUmumColor),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: whiteColor,
                              backgroundImage: NetworkImage(
                                  "https://sima.orbituinbkt.com/profile/pengurus/IMG-20230315-WA0036.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Rahmatul Wahid ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Ketua Umum",
                              style: TextStyle(
                                color: PolisUmumColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: whiteColor,
                              backgroundImage: NetworkImage(
                                  "https://sima.orbituinbkt.com/profile/pengurus/20230405_144406.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Artian",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sekretaris Umum",
                              style: TextStyle(
                                color: PolisUmumColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: whiteColor,
                              backgroundImage: NetworkImage(
                                  "https://sima.orbituinbkt.com/profile/pengurus/A0B38FB8-4E70-4777-8D36-B2B90320BC17.JPG"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "VERA ARVIANA",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bendahara Umum",
                              style: TextStyle(
                                color: PolisUmumColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Text(
              //   "Bidang Robotik",
              //   style: TextStyle(
              //       color: RobotikColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              // SizedBox(height: 5),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: RobotikColor),
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              //   child: Column(
              //     children: [
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/C9BD8B2D-3A09-4569-802A-377A7976EB4F.JPG"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Fajri Rinaldi Chan",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Kepala Bidang",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           )
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG20220603085655.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Rila Fitri Yanti",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Sekretaris Bidang",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Fadilla Septianti",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Bendahara Bidang",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/771C5A82-D6A5-44A6-93AD-E4FA8867F96F.JPG"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Wido Hadi K",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG_20230405_143823.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "M.Syawal",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Fernanda P",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/A51D3574-1A52-4BC5-8EAD-DF2D8E795519.JPG"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Arini Dina",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: RobotikColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10),
              // Text(
              //   "Bidang Programming",
              //   style: TextStyle(
              //       color: ProgramColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              // SizedBox(height: 5),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: ProgramColor),
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              //   child: Column(
              //     children: [
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/FBEE005D-FECF-48F6-9F0C-D45737A1FB4D.JPG"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Hery Kurniawan",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Kepala Bidang",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           )
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Rahmatul Wahid",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Sekretaris Bidang",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/60086DEB-498C-4780-A664-94F37858DE15.JPG"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Anitia Syahri",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Bendahara Bidang",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG-20230316-WA0061_1.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Nur Syabillahtul",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Fajri A.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 13,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG20230315142625.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Pungga R.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/A51D3574-1A52-4BC5-8EAD-DF2D8E795519.JPG"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Nisa S.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: ProgramColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10),
              // Text(
              //   "Bidang Multimedia",
              //   style: TextStyle(
              //       color: MultimediaColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              // SizedBox(height: 5),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: MultimediaColor),
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              //   child: Column(
              //     children: [
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/F5720F78-F902-4602-A101-8D7CB114BC1B.JPG"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Muhammad Ridho Tanjung",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Kepala Bidang",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           )
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG_20230405_170203.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Elsa Afriyani",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Sekretaris Bidang",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/A0B38FB8-4E70-4777-8D36-B2B90320BC17.JPG"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Vera Arviana Nur Safitri",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Bendahara Bidang",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Cherllytia M.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Whahida Y.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 13,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Chairul H.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG20230314085028-removebg-preview.png"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Nurul F.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: MultimediaColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10),
              // Text(
              //   "Bidang Jaringan",
              //   style: TextStyle(
              //       color: JaringanColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              // SizedBox(height: 5),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: JaringanColor),
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              //   child: Column(
              //     children: [
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/20230403_030309.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "A. Fikri Al Ajir",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Kepala Bidang",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           )
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG_20230313_221517.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Vina Ariska",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Sekretaris Bidang",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/InShot_20230405_144927982.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Nuraisyah",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Bendahara Bidang",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/70063CE5-F2F0-4C58-90E5-322B2056D84C.JPG"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "M. Arif",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/20230405_144406.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Artian",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 13,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/Picsart_23-04-05_16-22-00-768.png"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Doni I.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Imam D.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: JaringanColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 10),
              // Text(
              //   "Bidang Humas & Kerjasama",
              //   style: TextStyle(
              //       color: HumasColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
              // SizedBox(height: 5),
              // Container(
              //   decoration: BoxDecoration(
              //     border: Border.all(color: HumasColor),
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              //   child: Column(
              //     children: [
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/F081EF1E-2C56-42B1-9106-D9E729923B07.JPG"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Nurudin",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Kepala Bidang",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           )
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/IMG_20230313_221517.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Icha Primadona",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Sekretaris Bidang",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 35,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Salwa Saadah Chairil",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Bendahara Bidang",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://sima.orbituinbkt.com/profile/pengurus/335454F7-8C47-45F0-B43A-CB1A2F217110.JPG"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Ghisan S.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Risky H.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 13,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Elsa F.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //           Column(
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: whiteColor,
              //                 backgroundImage: NetworkImage(
              //                     "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
              //                 minRadius: 30,
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 "Cinta N.",
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontSize: 14,
              //                     fontWeight: FontWeight.bold),
              //               ),
              //               Text(
              //                 "Anggota",
              //                 style: TextStyle(
              //                   color: HumasColor,
              //                   fontSize: 12,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
