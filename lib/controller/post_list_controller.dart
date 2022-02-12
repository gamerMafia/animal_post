import 'package:demo_project/models/post_response.dart';
import 'package:demo_project/services/post_list/post_list_service.dart';
import 'package:get/get.dart';

class PostListController extends GetxController {

  late List<Result>? result = [];
  late String? address = '';
  late String? storeId = '';

  late bool isLoading = false;

  @override
  Future<void> onInit() async {
    await splashDashboardData();
    super.onInit();
  }

  splashDashboardData() async {
    isLoading = true;
    result  = await PostListService().postListRequest();
    isLoading = false;
    update();
  }
}

