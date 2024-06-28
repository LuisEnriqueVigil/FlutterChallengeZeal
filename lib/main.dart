import 'package:challenge_app/presentation/common/binding/main_binding.dart';
import 'package:challenge_app/presentation/routes/app_routes.dart';
import 'package:challenge_app/presentation/routes/pages_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Challenge App",
      initialRoute: AppRoutes.home,
      initialBinding:MainBinding() ,
      getPages: PagesRoutes.pages,
    );
  }
}