import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../controller/edashboard2_controller.dart';
import 'package:jago_slicing/core.dart';
import 'package:get/get.dart';

class Edashboard2View extends StatelessWidget {
  const Edashboard2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Edashboard2Controller>(
      init: Edashboard2Controller(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.network(
                          "https://seeklogo.com/images/S/svg-logo-A7D0801A11-seeklogo.com.png",
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Expanded(
                          child: Text(
                            "X-store",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
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
                              height: 120.0,
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
                            "Categories",
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
                        const Icon(
                          Icons.chevron_right,
                          size: 20.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.0 / 0.3,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: controller.categories.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.categories[index];
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                            ),
                            color: Colors.grey[300],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    item["label"],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  item["icons"],
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Discounts",
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
                        const Icon(
                          Icons.chevron_right,
                          size: 20.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.0 / 1.1,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
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
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: CircleAvatar(
                                          radius: 16.0,
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.more_horiz,
                                            color: Colors.grey,
                                            size: 16.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item["product_name"],
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    item["category"],
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Text(
                                    "${"\$" + item["price"].toString()}",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )
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
