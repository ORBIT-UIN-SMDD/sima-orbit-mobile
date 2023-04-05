import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Aplikasi"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 18,
            left: 18,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logosima.png",
                width: 200,
              ),
              Text(
                "Sistem Informasi Manajemen dan Administrasi (SIMA) ORBIT adalah aplikasi yang dirancang untuk membantu manajemen dan administrasi UKM Organisasi Berbasis IT (ORBIT). Aplikasi ini dapat digunakan untuk berbagai macam tujuan, termasuk mengelola data pengurus, alumni dan anggota serta mengelola kegiatan yang diadakan. Selain itu Sistem Informasi Manajemen dan Administrasi (SIMA) ORBIT juga menyediakan berbagai macam laporan dan data yang berguna bagi manajemen dalam mengambil keputusan. Aplikasi ini dirancang dengan antarmuka yang mudah digunakan dan dapat diakses dari mana saja dengan menggunakan perangkat yang terhubung ke internet.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 10),
              Text(
                "Software Developer Team",
                style: TextStyle(
                    color: PrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: PrimaryColor),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://sima.orbituinbkt.com/profile/pengurus/C9BD8B2D-3A09-4569-802A-377A7976EB4F.JPG"),
                          minRadius: 45,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Fajri Rinaldi Chan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Lead - Fullstack Enginner",
                              style: TextStyle(
                                color: PrimaryColor,
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/LinkedIn.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("in/fajri-chan")
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/whatsapp.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("+62 896-1339-0766")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://sima.orbituinbkt.com/profile/pengurus/FBEE005D-FECF-48F6-9F0C-D45737A1FB4D.JPG"),
                          minRadius: 45,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hery Kurniawan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Web Enginner",
                              style: TextStyle(
                                color: PrimaryColor,
                                fontSize: 12,
                              ),
                            ),
                            // Row(
                            //   children: [
                            //     Image.asset(
                            //       "assets/icons/LinkedIn.png",
                            //       width: 22,
                            //     ),
                            //     SizedBox(width: 7),
                            //     Text("in/fajri-chan")
                            //   ],
                            // ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/whatsapp.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("+62 852-1403-7086")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://sima.orbituinbkt.com/profile/pengurus/8C587B79-90A9-4213-8CE8-BAACE0B9C126.JPG"),
                          minRadius: 45,
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mirfa Reza Ashary",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UI/UX Designer",
                              style: TextStyle(
                                color: PrimaryColor,
                                fontSize: 12,
                              ),
                            ),
                            // Row(
                            //   children: [
                            //     Image.asset(
                            //       "assets/icons/LinkedIn.png",
                            //       width: 22,
                            //     ),
                            //     SizedBox(width: 7),
                            //     Text("in/fajri-chan")
                            //   ],
                            // ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/whatsapp.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("+62 852-7143-7720")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
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
