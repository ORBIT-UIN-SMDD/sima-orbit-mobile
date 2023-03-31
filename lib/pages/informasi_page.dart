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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia congue leo vel accumsan. Suspendisse pellentesque odio vitae lorem laoreet, at viverra diam cursus. Integer vehicula diam fermentum diam bibendum rhoncus. Curabitur tempor est at nunc semper maximus. Cras convallis libero vitae dolor congue, nec tincidunt nulla placerat. Ut malesuada dolor vitae nisl accumsan elementum. Nam nec odio vel lacus venenatis fermentum ac sit amet sem.",
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
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Rahma Yanti",
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
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Mirfa Reza Ashary",
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
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Tessa Melinda",
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
              Text(
                "Bidang Robotik",
                style: TextStyle(
                    color: RobotikColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: RobotikColor),
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
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Fajri Rinaldi Chan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kepala Bidang",
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
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Rila Fitri Yanti",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sekretaris Bidang",
                              style: TextStyle(
                                color: RobotikColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Fadilla Septianti",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Bendahara Bidang",
                              style: TextStyle(
                                color: RobotikColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Wido Hadi K",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Anggota",
                              style: TextStyle(
                                color: RobotikColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "M.Syawal",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Anggota",
                              style: TextStyle(
                                color: RobotikColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Fernanda P",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Anggota",
                              style: TextStyle(
                                color: RobotikColor,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
                              minRadius: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Arini Dina",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Anggota",
                              style: TextStyle(
                                color: RobotikColor,
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
            ],
          ),
        ),
      ),
    );
  }
}
