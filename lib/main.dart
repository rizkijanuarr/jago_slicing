import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

import 'module/main_navigation/view/main_navigation_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SETUP WINDOWS
  await windowManager.ensureInitialized();
  await windowManager.setSize(Size(360.0, 440.0));
  windowManager.setAlwaysOnTop(true);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: const MainNavigationView(),

      // BIKIN NAVIGATION BACK
      builder: (context, child) {
        return Material(
          child: Stack(
            children: [
              child!,
              Positioned(
                right: 10,
                bottom: 20,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: CircleAvatar(
                    radius: 12.0,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.chevron_left,
                      color: Color(0xff7c4dff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      // END BIKIN NAVIGATION BACK
    ),
  );
}
