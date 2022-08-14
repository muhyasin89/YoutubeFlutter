import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/echarts_controller.dart';

class EchartsView extends GetView<EchartsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EchartsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'EchartsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
