import 'package:api/controller/post_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostScreen extends GetView<PostPageController> {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.postApiCall();
        },
      ),
    );
  }
}
