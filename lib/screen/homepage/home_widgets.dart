import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untiapi/screen/homepage/home_controller.dart';

AppBar homeAppBar() {
  return AppBar(
    title: const Text(
      "GET API",
    ),
    centerTitle: true,
  );
}

Widget imageList() {
  return GetBuilder<HomeScreenController>(
    id: 'update',
    builder: (controller) {
      return controller.imageList != null
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
              ),
              itemCount: controller.imageList!.length,
              itemBuilder: (context, index) {
                // return Text(controller.imageList![index].id.toString(),);
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(controller.imageList![index].url!),
                    ),
                  ),
                );
              })
          : const Center(
              child: CircularProgressIndicator(),
            );
    },
  );
}
