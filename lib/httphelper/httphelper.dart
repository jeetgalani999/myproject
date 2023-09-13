import 'dart:convert';
import 'dart:developer';
import 'package:api/controller/get_page_controller.dart';
import 'package:api/models/postuser_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../api/Url.dart';
import '../models/getuser_modal.dart';

class HttpHelper {
  getUserApi({required String page}) async {
    var request = http.MultipartRequest(
      'GET',
      Uri.parse('${Urls().baseUrl}${Urls().users}?page=$page'),
    );
    var response = await http.Response.fromStream(await request.send());

    if (response.statusCode == 200) {
      return GetUserModel.fromJson(jsonDecode(response.body));
    } else {
      debugPrint(response.statusCode.toString());
    }
  }

  postUserApi() async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${Urls().baseUrl}${Urls().users}'),
    );
    request.fields.addAll({"name": "morpheus", "job": "leader"});
    var response = await http.Response.fromStream(await request.send());
    if (response.statusCode == 200||response.statusCode == 201) {
      return PostModel.fromJson(jsonDecode(response.body));
    } else {
      debugPrint(response.statusCode.toString());
    }
  }
}
