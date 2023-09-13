import 'package:api/controller/post_page_controller.dart';
import 'package:get/get.dart';

class PostPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PostPageController());
  }
}
