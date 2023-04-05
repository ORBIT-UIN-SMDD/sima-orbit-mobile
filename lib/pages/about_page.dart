import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia congue leo vel accumsan. Suspendisse pellentesque odio vitae lorem laoreet, at viverra diam cursus. Integer vehicula diam fermentum diam bibendum rhoncus. Curabitur tempor est at nunc semper maximus. Cras convallis libero vitae dolor congue, nec tincidunt nulla placerat. Ut malesuada dolor vitae nisl accumsan elementum. Nam nec odio vel lacus venenatis fermentum ac sit amet sem.",
                textAlign: TextAlign.center,
                style: TextStyle(),
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
                              "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
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
                                  "assets/icons/Instagram.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("fajri_chan")
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
                              "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
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
                                  "assets/icons/Instagram.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("fajri_chan")
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
                              "https://mediahavefun.com/wp-content/uploads/2018/03/DYgZIHaVwAAbAPt.jpg"),
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
                                  "assets/icons/Instagram.png",
                                  width: 22,
                                ),
                                SizedBox(width: 7),
                                Text("fajri_chan")
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
