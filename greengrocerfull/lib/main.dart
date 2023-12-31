import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocerfull/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocerfull/src/pages_routes/app_pages.dart';

void main() {
  Get.put(AuthController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Greengrocer',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: PagesRoutes.splashRoute,
      getPages: AppPages.pages,
    );
  }
}


//flutter pub run build_runner build

//extensao do vscode: dart data class generator