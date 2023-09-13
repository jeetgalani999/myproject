import 'dart:developer';

import 'package:api/httphelper/httphelper.dart';
import 'package:get/get.dart';

import '../models/getuser_modal.dart';

class GetPageController extends GetxController {
  RxList<Data> userList = <Data>[].obs;
  RxBool loading = false.obs;

  getApiCall(String page) async {
    loading.value = true;
    GetUserModel userData = await HttpHelper().getUserApi(page: 2.toString());
    final data = userData.data;
    if (data is List) {
      userList.value = userData.data!;
    }
    loading.value = false;
  }

  @override
  void onInit() {
    getApiCall(2.toString());
    super.onInit();
  }
}
