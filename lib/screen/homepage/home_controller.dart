import 'package:get/get.dart';

import '../../model/model_class.dart';
import 'homescreen_api.dart';

class HomeScreenController extends GetxController {
  // bool hello = false;
  List<ImageModel>? imageList;

  @override
  void onInit() {
    getImageList();
    super.onInit();
  }

  Future<void> getImageList() async {
    // hello = true;
    imageList = await HomeScreenApi.getData();
     imageList ??= [];
    // hello = false;
    update(['update']);
  }
}
