import 'package:blog/config/dio_config.dart';
import 'package:blog/model/post_model.dart';
import 'package:dio/dio.dart';

class PostService {
  // Post data
  Future<dynamic> postData() async {}

  // Get all data
  Future<dynamic> getData() async {
    await Future.delayed(Duration(seconds: 4));
    try {
      Response response = await DioConfig.createRequest()
          .get("http://192.168.100.5:3000/get_all_post");
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => PostModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
