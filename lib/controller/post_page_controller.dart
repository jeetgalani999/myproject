import 'dart:developer';

import 'package:api/models/postuser_modal.dart';
import 'package:get/get.dart';

import '../httphelper/httphelper.dart';

class PostPageController extends GetxController {
  RxString userList = ''.obs;
  RxBool loading = false.obs;

  postApiCall() async {
    loading.value = true;
    PostModel userData = await HttpHelper().postUserApi();
    final data = userData.name;
    userList.value = userData.createdAt??'';
    loading.value = false;
  }
}
