import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sima_orbit_mobile/const/color.dart';

class PenugasanPage extends StatelessWidget {
  const PenugasanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Penugasan & Kepanitiaan"),
          centerTitle: true,
          backgroundColor: PrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, top: 20),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  // labelStyle: TextStyle(color: PrimaryColor),
                  hintText: "Cari",
                  isDense: true,
                  focusColor: PrimaryColor,
                  filled: true,
                  prefixIcon: Icon(Icons.search, size: 30),
                  prefixIconColor: PrimaryColor,
                  suffixIcon: Icon(Icons.close, size: 25),
                  suffixIconColor: PrimaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: PrimaryColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () => context.goNamed("detail_penugasan"),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Color(0xffEBEBEF),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 20,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kepanitiaan Mubes XII UKM ORBIT",
                              style: TextStyle(fontSize: 16)),
                          Text("Sebagai Ketupat",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text("7 Januari 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text("Sekretariat SEMA-U",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
