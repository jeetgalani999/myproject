import 'package:api/bindings/get_bindings.dart';
import 'package:api/bindings/post_binding.dart';
import 'package:api/routes/app_routes.dart';
import 'package:api/view/get_screen.dart';
import 'package:api/view/post_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.getPage,
        page: () => const GetScreen(),
        binding: GetPageBinding()),
    GetPage(
        name: AppRoutes.postPage,
        page: () => const PostScreen(),
        binding: PostPageBinding()),
  ];
}
