import 'package:api/controller/get_page_controller.dart';
import 'package:api/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetScreen extends GetView<GetPageController> {
  const GetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () =>  controller.loading.isFalse
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.userList[index].firstName!),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10);
                  },
                  itemCount: controller.userList.length)
              : const Center(child: CircularProgressIndicator()),
        ),
    floatingActionButton: FloatingActionButton(onPressed: () {
      Get.toNamed(AppRoutes.postPage);
    },),
    );
  }
}
