import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untiapi/screen/homepage/homescreen.dart';

main() {
  runApp(
    const GetMaterialApp(
      home: Api(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
