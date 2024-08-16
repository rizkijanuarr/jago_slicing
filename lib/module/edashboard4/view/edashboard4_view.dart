import 'package:flutter/material.dart';
import '../controller/edashboard4_controller.dart';
import 'package:jago_slicing/core.dart';
import 'package:get/get.dart';

class Edashboard4View extends StatelessWidget {
  const Edashboard4View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Edashboard4Controller>(
      init: Edashboard4Controller(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Feed",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 50.0,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          6.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                        decoration: InputDecoration(
                          hintText: "Search...",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[500],
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                            color: Colors.grey[500],
                          ),
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    controller: ScrollController(),
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    child: Row(
                      children: List.generate(controller.story.length, (index) {
                        var item = controller.story[index];
                        return Row(
                          children: [
                            if (index == 0) ...[
                              Container(
                                height: 120.0,
                                width: 90.0,
                                margin: const EdgeInsets.only(
                                  right: 12.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[900],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Spacer(),
                                      CircleAvatar(
                                        radius: 16.0,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          size: 16.0,
                                          Icons.add,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Text(
                                        "Add story",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                            Container(
                              height: 120.0,
                              width: 90.0,
                              margin: const EdgeInsets.only(
                                right: 12.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[900],
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Spacer(),
                                    CircleAvatar(
                                      radius: 16.0,
                                      backgroundImage: NetworkImage(
                                        item["photo"],
                                      ),
                                    ),
                                    Text(
                                      item["name"],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.postStatus.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        var item = controller.postStatus[index];
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
                                      item["photo"],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
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
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  CircleAvatar(
                                    radius: 8.0,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      size: 8.0,
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "2 min ago",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.normal,
                                    ),
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
                                height: 10.0,
                              ),
                              Text(
                                item["message"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${controller.formatNumberToK(item["likes"])} likes",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "${item["comments"]} comments",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(
                                      size: 14.0,
                                      Icons.favorite,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(
                                      size: 14.0,
                                      Icons.comment,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  CircleAvatar(
                                    radius: 14.0,
                                    backgroundColor: Colors.grey[300],
                                    child: Icon(
                                      size: 14.0,
                                      Icons.share,
                                      color: Colors.grey,
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
          ),
        );
      },
    );
  }
}
