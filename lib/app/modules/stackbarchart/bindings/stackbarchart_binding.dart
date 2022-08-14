import 'package:get/get.dart';

import '../controllers/stackbarchart_controller.dart';

class StackbarchartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StackbarchartController>(
      () => StackbarchartController(),
    );
  }
}
