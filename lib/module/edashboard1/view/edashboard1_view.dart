import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../controller/edashboard1_controller.dart';
import 'package:jago_slicing/core.dart';
import 'package:get/get.dart';

class Edashboard1View extends StatelessWidget {
  const Edashboard1View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Edashboard1Controller>(
      init: Edashboard1Controller(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shop",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Over 45K Items Available for You",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Builder(builder: (context) {
                      List images = [
                        "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                        "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                        "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                        "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                        "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                      ];

                      return Column(
                        children: [
                          CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              height: 160.0,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
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
                              bool isSelected =
                                  controller.currentIndex == entry.key;
                              return GestureDetector(
                                onTap: () => controller.carouselController
                                    .animateToPage(entry.key),
                                child: Container(
                                  width: isSelected ? 40 : 6.0,
                                  height: 6.0,
                                  margin: const EdgeInsets.only(
                                    right: 6.0,
                                    top: 12.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: isSelected
                                        ? Colors.grey
                                        : Colors.grey.withOpacity(0.6),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      );
                    }),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.chevron_right,
                          size: 16.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.0,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: controller.products.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.products[index];
                        return Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 160.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        item["photo"],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                item["product_name"],
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                item["category"],
                                style: TextStyle(
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
