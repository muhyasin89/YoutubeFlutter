import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed('mrx-charts'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('mrx-charts'),
              ),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('pie-charts'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('pie-charts'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
