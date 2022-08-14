import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mrx_charts_controller.dart';
import './pie_view.dart';
import './candle_view.dart';
import './bar_view.dart';
import './group_bar_view.dart';
import './line_view.dart';

class MrxChartsView extends GetView<MrxChartsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MrxChartsView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(BarView()),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Bar'),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            ElevatedButton(
              onPressed: () => Get.to(GroupBarView()),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Group bar'),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            ElevatedButton(
              onPressed: () => Get.to(CandleView()),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Candle'),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            ElevatedButton(
              onPressed: () => Get.to(LineView()),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Line'),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            ElevatedButton(
              onPressed: () => Get.to(PieView()),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1B0E41),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text('Pie'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
