import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jago_slicing/core.dart';
import 'package:get/get.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Theme(
          data: ThemeData().copyWith(
            // STYLE BACKGROUND COLOR
            scaffoldBackgroundColor: Colors.white,
            // STYLE APPBAR
            appBarTheme: AppBarTheme(
              // STYLE COLOR APPBAR
              backgroundColor: Colors.grey[300],
              toolbarHeight: 80.0,
              elevation: 0.0,
              // STYLE TITLE TEXT STYLE
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              // STYLE ICON
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text("Jago Slicing\nWrite less do more!🚀"),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Builder(builder: (context) {
                      List images = [
                        "https://images.unsplash.com/photo-1577640256262-8488aa247e17?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        "https://images.unsplash.com/photo-1568849676085-51415703900f?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        "https://images.unsplash.com/photo-1548438294-1ad5d5f4f063?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        "https://images.unsplash.com/photo-1512223886638-d2914abf5df3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        "https://images.unsplash.com/photo-1552508744-1696d4464960?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ];

                      return Column(
                        children: [
                          CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              height: 140.0,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                controller.currentIndex = index;
                                controller.update();
                              },
                            ),
                            items: images.map((imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6.0),
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          imageUrl,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: images.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () => controller.carouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.grey)
                                          .withOpacity(
                                              controller.currentIndex ==
                                                      entry.key
                                                  ? 0.9
                                                  : 0.4)),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      );
                    }),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MainNavigationMenu()
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
