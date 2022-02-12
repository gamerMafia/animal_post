import 'package:demo_project/constants/app_strings.dart';

import 'package:demo_project/models/post_response.dart';

import 'package:dio/dio.dart';
import '../app_services.dart';

class PostListService{
 Future<List<Result>> postListRequest()
  async {
   List<Result> result=[];
    Response response=await AppService().getRequest(AppString.postList);
    if (response.data["result"] != null) {
      result = [];
      response.data["result"].forEach((v) {
        result.add(Result.fromJson(v));
      });
    }
    return result;
  }
}