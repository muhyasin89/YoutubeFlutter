import 'package:get/get.dart';

import 'package:youtube_flutter/app/modules/echarts/bindings/echarts_binding.dart';
import 'package:youtube_flutter/app/modules/echarts/views/echarts_view.dart';
import 'package:youtube_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:youtube_flutter/app/modules/home/views/home_view.dart';
import 'package:youtube_flutter/app/modules/map_chart/bindings/map_chart_binding.dart';
import 'package:youtube_flutter/app/modules/map_chart/views/map_chart_view.dart';
import 'package:youtube_flutter/app/modules/mrx_charts/bindings/mrx_charts_binding.dart';
import 'package:youtube_flutter/app/modules/mrx_charts/views/mrx_charts_view.dart';
import 'package:youtube_flutter/app/modules/stackbarchart/bindings/stackbarchart_binding.dart';
import 'package:youtube_flutter/app/modules/stackbarchart/views/stackbarchart_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MAP_CHART,
      page: () => MapChartView(),
      binding: MapChartBinding(),
    ),
    GetPage(
      name: _Paths.ECHARTS,
      page: () => EchartsView(),
      binding: EchartsBinding(),
    ),
    GetPage(
      name: _Paths.STACKBARCHART,
      page: () => StackbarchartView(),
      binding: StackbarchartBinding(),
    ),
    GetPage(
      name: _Paths.MRX_CHARTS,
      page: () => MrxChartsView(),
      binding: MrxChartsBinding(),
    ),
  ];
}
