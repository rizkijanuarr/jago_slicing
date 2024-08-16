import 'dart:math';

import 'package:get/get.dart';
import '../view/edashboard4_view.dart';

class Edashboard4Controller extends GetxController {
  Edashboard4View? view;

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

  // List<Map<String, dynamic>> user = [
  //   {
  //     "name": "Ancit",
  //     "photo":
  //         "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //   },
  //   {
  //     "name": "Kikieww",
  //     "photo":
  //         "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?q=80&w=1488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //   },
  //   {
  //     "name": "Bububb",
  //     "photo":
  //         "https://images.unsplash.com/photo-1602442787305-decbd65be507?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //   },
  //   {
  //     "name": "Citaaw",
  //     "photo":
  //         "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1522&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //   },
  //   {
  //     "name": "Cit",
  //     "photo":
  //         "https://images.unsplash.com/photo-1561643241-9abf82d76a68?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //   },
  // ];

  // List<Map<String, dynamic>> userStatus = [
  //   {
  //     "name": "Ancit",
  //     "photo":
  //         "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     "likes": 144000,
  //     "comments": "68",
  //     "message":
  //         "sesuatu yang kecil, berharap bisa menggerakan semua hati yang besar🌻"
  //   },
  //   {
  //     "name": "Kikieww",
  //     "photo":
  //         "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?q=80&w=1488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     "likes": 120000,
  //     "comments": "45",
  //     "message": "Feeling blessed today!🌟"
  //   },
  //   {
  //     "name": "Bububb",
  //     "photo":
  //         "https://images.unsplash.com/photo-1602442787305-decbd65be507?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     "likes": 98000,
  //     "comments": "30",
  //     "message": "Enjoying this beautiful weather! ☀️"
  //   },
  //   {
  //     "name": "Citaaw",
  //     "photo":
  //         "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1522&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     "likes": 75000,
  //     "comments": "20",
  //     "message": "Feeling excited about the new project!🚀"
  //   },
  //   {
  //     "name": "Cit",
  //     "photo":
  //         "https://images.unsplash.com/photo-1561643241-9abf82d76a68?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  //     "likes": 55000,
  //     "comments": "15",
  //     "message": "Today is today!♨️"
  //   },
  // ];

  // String formatNumberToK(int number) {
  //   if (number >= 1000) {
  //     double num = number / 1000;
  //     return '${num.toStringAsFixed(num.truncateToDouble() == num ? 0 : 1)}k';
  //   } else {
  //     return number.toString();
  //   }
  // }

  List<Map<String, dynamic>> story = [
    {
      "name": "Ancit",
      "photo":
          "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "name": "Bubub",
      "photo":
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1522&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "name": "Kikieww",
      "photo":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?q=80&w=1488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "name": "Citaa",
      "photo":
          "https://images.unsplash.com/photo-1602442787305-decbd65be507?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
    {
      "name": "Unyien",
      "photo":
          "https://images.unsplash.com/photo-1561643241-9abf82d76a68?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    },
  ];

  List<Map<String, dynamic>> postStatus = [
    {
      "name": "Ancit",
      "photo":
          "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "likes": Random().nextInt(100),
      "comments": Random().nextInt(50),
      "message": "Hari ini sangat menyenangkan! Semangat untuk hari esok!🚀",
    },
    {
      "name": "Bubub",
      "photo":
          "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=1522&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "likes": Random().nextInt(100),
      "comments": Random().nextInt(50),
      "message": "Semoga hari ini penuh kebahagiaan!☄️",
    },
    {
      "name": "Kikieww",
      "photo":
          "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?q=80&w=1488&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "likes": Random().nextInt(100),
      "comments": Random().nextInt(50),
      "message": "Berbagi kebahagiaan dengan semua orang di sekitar!🚀",
    },
    {
      "name": "Citaa",
      "photo":
          "https://images.unsplash.com/photo-1602442787305-decbd65be507?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "likes": Random().nextInt(100),
      "comments": Random().nextInt(50),
      "message": "Saatnya bersantai dan menikmati hidup!☄️",
    },
    {
      "name": "Unyien",
      "photo":
          "https://images.unsplash.com/photo-1561643241-9abf82d76a68?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "likes": Random().nextInt(100),
      "comments": Random().nextInt(50),
      "message": "Menikmati momen kecil yang berharga!🚀",
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
