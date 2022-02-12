import 'package:demo_project/view/post_screen/post_list_screen.dart';

import 'name_routes.dart';
import 'package:get/get.dart';

class ScreenRoutes {
  static final screens = [
    GetPage(name: Routes.PostListScreen, page:()=> const PostListScreen()),
  ];
}