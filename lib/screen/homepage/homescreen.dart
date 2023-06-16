import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:untiapi/screen/homepage/home_controller.dart';

import 'home_widgets.dart';

class Api extends StatelessWidget {
  const Api({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Scaffold(
      appBar: homeAppBar(),
      body: imageList(),
    );
  }

}
