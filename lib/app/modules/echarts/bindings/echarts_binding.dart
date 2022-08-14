import 'package:get/get.dart';

import '../controllers/echarts_controller.dart';

class EchartsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EchartsController>(
      () => EchartsController(),
    );
  }
}
