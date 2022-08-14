import 'package:get/get.dart';

import '../controllers/map_chart_controller.dart';

class MapChartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapChartController>(
      () => MapChartController(),
    );
  }
}
