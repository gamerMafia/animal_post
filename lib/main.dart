import 'package:demo_project/routes/name_routes.dart';
import 'package:demo_project/routes/screen_routes.dart';
import 'package:demo_project/utils/process_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/app_colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Loading(
      child: GetMaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: AppColors.themeColor,
          ),
        ),
        getPages: ScreenRoutes.screens,
        initialRoute: Routes.PostListScreen,
      ),
    ),
  );
}
