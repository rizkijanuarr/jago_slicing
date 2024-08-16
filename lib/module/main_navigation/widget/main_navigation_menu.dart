import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jago_slicing/core.dart';

class MainNavigationMenu extends StatelessWidget {
  const MainNavigationMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> menuItems = [
      {"label": "E-Dashboard 1", "page": Edashboard1View(), "icon": "🚀"},
      {"label": "E-Dashboard 2", "page": Edashboard2View(), "icon": "✨"},
      {"label": "E-Dashboard 3", "page": Edashboard3View(), "icon": "☄️"},
      {"label": "E-Dashboard 4", "page": Edashboard4View(), "icon": "♨️"},
      {"label": "E-Dashboard 5", "page": Edashboard5View(), "icon": "☀️"},
    ];
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 0.3,
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
      itemCount: menuItems.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = menuItems[index];
        return InkWell(
          onTap: () {
            Get.to(item["page"]);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      item["label"],
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    item["icon"],
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
