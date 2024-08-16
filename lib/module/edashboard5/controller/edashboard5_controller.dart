import 'dart:math';

import 'package:get/get.dart';
import '../view/edashboard5_view.dart';

class Edashboard5Controller extends GetxController {
  Edashboard5View? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<Map<String, dynamic>> userStory = [
    {
      "name": "Aan Citra Lestari",
      "photo": "https://source.unsplash.com/featured?women,beautiful",
    },
    {
      "name": "Kikiew",
      "photo": "https://source.unsplash.com/featured?man",
    },
    {
      "name": "Bubub",
      "photo": "https://source.unsplash.com/featured?women,cool",
    },
    {
      "name": "Eva Davis",
      "photo": "https://source.unsplash.com/featured?woman",
    },
    {
      "name": "Mike Wilson",
      "photo": "https://source.unsplash.com/featured?women",
    },
  ];

  List<Map<String, dynamic>> userPost = [
    {
      "name": "Aan Citra L.",
      "with": "Kikieww",
      "time": "2 min ago",
      "location": "Cisauk, Banten",
      "likes": Random().nextInt(10000),
      "comments": Random().nextInt(50000),
      "share": Random().nextInt(100),
      "photo": "https://source.unsplash.com/featured?cisauk,banten",
      "profile": "https://source.unsplash.com/featured?women,beautiful"
    },
    {
      "name": "Bubub",
      "with": "Unyien",
      "time": "5 min ago",
      "location": "Ubud, Bali",
      "likes": Random().nextInt(10000),
      "comments": Random().nextInt(50000),
      "share": Random().nextInt(100),
      "photo": "https://source.unsplash.com/featured?ubud,bali",
      "profile": "https://source.unsplash.com/featured?women,cool"
    },
    {
      "name": "Citaa",
      "with": "Ancit",
      "time": "10 min ago",
      "location": "Bandung, Jawa Barat",
      "likes": Random().nextInt(10000),
      "comments": Random().nextInt(50000),
      "share": Random().nextInt(100),
      "photo": "https://source.unsplash.com/featured?bandung,jawa",
      "profile": "https://source.unsplash.com/featured?women,beautiful,girl"
    },
    {
      "name": "Unyien",
      "with": "Bubub",
      "time": "15 min ago",
      "location": "Makassar, Sulawesi Selatan",
      "likes": Random().nextInt(10000),
      "comments": Random().nextInt(50000),
      "share": Random().nextInt(100),
      "photo": "https://source.unsplash.com/featured?makassar,sulawesi",
      "profile": "https://source.unsplash.com/featured?women,beautiful,girl"
    },
    {
      "name": "Kikieww",
      "with": "Aan Citra L.",
      "time": "20 min ago",
      "location": "Medan, Sumatera Utara",
      "likes": Random().nextInt(10000),
      "comments": Random().nextInt(50000),
      "share": Random().nextInt(100),
      "photo": "https://source.unsplash.com/featured?medan,sumatera",
      "profile": "https://source.unsplash.com/featured?man,cool"
    },
  ];

  String formatNumberToK(int number) {
    if (number >= 1000) {
      double num = number / 1000;
      return '${num.toStringAsFixed(num.truncateToDouble() == num ? 0 : 1)}k';
    } else {
      return number.toString();
    }
  }
}
