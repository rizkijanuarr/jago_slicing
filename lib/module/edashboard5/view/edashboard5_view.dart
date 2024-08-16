import 'package:flutter/material.dart';
import '../controller/edashboard5_controller.dart';
import 'package:jago_slicing/core.dart';
import 'package:get/get.dart';

class Edashboard5View extends StatelessWidget {
  const Edashboard5View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Edashboard5Controller>(
      init: Edashboard5Controller(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        "X-Social Media",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.add,
                      size: 20.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Icon(
                      Icons.search,
                      size: 20.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Icon(
                      Icons.more_horiz,
                      size: 20.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SingleChildScrollView(
                  controller: ScrollController(),
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: Row(
                    children:
                        List.generate(controller.userStory.length, (index) {
                      var item = controller.userStory[index];
                      return Row(
                        children: [
                          if (index == 0) ...[
                            Container(
                              margin: const EdgeInsets.only(
                                right: 12.0,
                              ),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 20.0,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    "Add Story",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          Container(
                            width: 50.0,
                            margin: const EdgeInsets.only(
                              right: 12.0,
                            ),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    item["photo"],
                                  ),
                                ),
                                const SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  item["name"],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.userPost.length,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      var item = controller.userPost[index];
                      return Container(
                        margin: const EdgeInsets.only(
                          bottom: 20.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    item["profile"].toString(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            item["name"],
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            "with",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          Text(
                                            item["with"],
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            item["time"],
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5.0,
                                          ),
                                          const Icon(
                                            Icons.place,
                                            size: 16.0,
                                          ),
                                          const SizedBox(
                                            width: 2.0,
                                          ),
                                          Expanded(
                                            child: Text(
                                              item["location"],
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.more_horiz,
                                  size: 24.0,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
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
                                    8.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  size: 24.0,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Icon(
                                  Icons.comment,
                                  size: 24.0,
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.share,
                                  size: 24.0,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${controller.formatNumberToK(item["likes"])} likes",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "${controller.formatNumberToK(item["comments"])} comments",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "${controller.formatNumberToK(item["share"])} shares",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
