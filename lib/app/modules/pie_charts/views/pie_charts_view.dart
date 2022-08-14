import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';

import '../controllers/pie_charts_controller.dart';
import 'dart:ui';

class PieChartsView extends GetView<PieChartsController> {
  final dataMap = <String, double>{
    "Flutter": 5,
    "React Native": 3,
    "xamarin": 2,
  };

  final colorList = <Color>[
    Colors.greenAccent,
    Color.fromRGBO(175, 63, 62, 1.0),
    Color.fromRGBO(254, 154, 92, 1),
  ];
  final gradientList = <List<Color>>[
    [
      Color.fromRGBO(223, 250, 92, 1),
      Color.fromRGBO(129, 250, 112, 1),
    ],
    [
      Color.fromRGBO(129, 182, 205, 1),
      Color.fromRGBO(91, 253, 199, 1),
    ],
    [
      Color.fromRGBO(175, 63, 62, 1.0),
      Color.fromRGBO(254, 154, 92, 1),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PieChartsView'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: PieChart(
          dataMap: dataMap,
          chartType: ChartType.ring,
          baseChartColor: Colors.grey[300]!,
          colorList: colorList,
          gradientList: gradientList,
          emptyColorGradient: [
            Color(0xff6c5ce7),
            Colors.blue,
          ],
        ),
      ),
    );
  }
}
