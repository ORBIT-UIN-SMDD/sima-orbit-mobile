import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/const/color.dart';
import 'package:sima_orbit_mobile/provider/profile_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class KtaPage extends StatelessWidget {
  const KtaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.download,
            color: PrimaryColor,
          ),
          backgroundColor: whiteColor,
        ),
        body: Consumer<ProfileProvider>(
          builder: (context, state, child) {
            return state.isLoading == false
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          items: [
                            Container(
                              height: 500,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/card/depan.png"))),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 175,
                                    left: 93,
                                    child: Container(
                                      width: 117,
                                      height: 158,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          image: DecorationImage(
                                              image: NetworkImage(state.foto),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: 380,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        state.profilePengurus!.profile.nama
                                            .toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: whiteColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: 402,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "ID. " +
                                            state.profilePengurus!.profile.nim
                                                .toString(),
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                      top: 420,
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          state.statusPref!.toUpperCase(),
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: whiteColor,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: 500,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/card/belakang.png"))),
                            ),
                          ],
                          options: CarouselOptions(
                            height: 500,
                            viewportFraction: 1,
                            enableInfiniteScroll: false,
                            onPageChanged: (index, reason) {
                              Provider.of<ProfileProvider>(context,
                                      listen: false)
                                  .sliderKTA(index);
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        SmoothPageIndicator(
                            controller: PageController(
                                initialPage:
                                    Provider.of<ProfileProvider>(context)
                                        .activeSlider), // PageController
                            count: 2,
                            effect: WormEffect(
                                dotWidth: 10,
                                dotHeight: 10), // your preferred effect
                            onDotClicked: (index) {})
                      ],
                    ),
                  )
                : Container();
          },
        ));
  }
}
