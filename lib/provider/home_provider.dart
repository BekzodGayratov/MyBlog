import 'package:blog/model/post_model.dart';
import 'package:blog/service/posts_service.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    getPosts();
  }
  PostService postService = PostService();

  bool isLoading = false;
  String error = "";
  List<PostModel> data = [];

  Future<void> getPosts() async {
    isLoading = true;
    notifyListeners();
    await postService.getLatestPosts().then((dynamic response) {
      if (response is List<PostModel>) {
        data = response;
        isLoading = false;
        notifyListeners();
      } else {
        error = response;
        isLoading = false;
        notifyListeners();
      }
    });
  }
}
