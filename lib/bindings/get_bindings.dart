import 'package:api/controller/get_page_controller.dart';
import 'package:get/get.dart';

class GetPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetPageController());
  }
}
