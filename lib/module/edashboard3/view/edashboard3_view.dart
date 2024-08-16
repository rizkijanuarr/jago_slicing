import 'package:flutter/material.dart';
import '../controller/edashboard3_controller.dart';
import 'package:jago_slicing/core.dart';
import 'package:get/get.dart';

class Edashboard3View extends StatelessWidget {
  const Edashboard3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Edashboard3Controller>(
      init: Edashboard3Controller(),
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_center,w_730,h_487/stock%2Fshutterstock_373602469",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Snack",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Alfamart",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1.0 / 1.2,
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                      ),
                      itemCount: controller.store.length,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.store[index];
                        return Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 160.0,
                                  clipBehavior: Clip.antiAlias,
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
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item["subtitle"],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            item["title"],
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            item["message"],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
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
