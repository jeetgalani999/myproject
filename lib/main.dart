import 'package:api/routes/app_pages.dart';
import 'package:api/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() {
  return runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    getPages: AppPages.pages,
    initialRoute: AppRoutes.getPage,
  ));
}
