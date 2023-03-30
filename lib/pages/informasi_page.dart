import 'package:flutter/material.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifikasi"),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(right: 8, left: 8, top: 15),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Color(0xffECF0F1),
              child: Container(
                  height: 90,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xffFDEBD0),
                        child: Container(
                          height: 75,
                          width: 50,
                          child: Icon(
                            Icons.notifications,
                            size: 35,
                            color: Color(0xffF39C12),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Notifikasi",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Parkir Success, Lokasi Parkir mu B1",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
