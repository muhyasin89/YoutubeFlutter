import 'package:get/get.dart';

import '../controllers/mrx_charts_controller.dart';

class MrxChartsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MrxChartsController>(
      () => MrxChartsController(),
    );
  }
}
