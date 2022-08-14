import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/map_chart_controller.dart';

class MapChartView extends GetView<MapChartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MapChartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MapChartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
