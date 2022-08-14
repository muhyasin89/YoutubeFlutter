import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mrx_charts/mrx_charts.dart';

List<ChartLayer> layers() {
  final from = DateTime(2021, 4);
  final to = DateTime(2021, 8);
  final frequency =
      (to.millisecondsSinceEpoch - from.millisecondsSinceEpoch) / 3.0;
  return [
    ChartHighlightLayer(
      shape: () => ChartHighlightLineShape<ChartLineDataItem>(
        backgroundColor: const Color(0xFF331B6D),
        currentPos: (item) => item.currentValuePos,
        radius: const BorderRadius.all(Radius.circular(8.0)),
        width: 60.0,
      ),
    ),
    ChartAxisLayer(
      settings: ChartAxisSettings(
        x: ChartAxisSettingsAxis(
          frequency: frequency,
          max: to.millisecondsSinceEpoch.toDouble(),
          min: from.millisecondsSinceEpoch.toDouble(),
          textStyle: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 10.0,
          ),
        ),
        y: ChartAxisSettingsAxis(
          frequency: 100.0,
          max: 400.0,
          min: 0.0,
          textStyle: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 10.0,
          ),
        ),
      ),
      labelX: (value) => DateFormat('MMM')
          .format(DateTime.fromMillisecondsSinceEpoch(value.toInt())),
      labelY: (value) => value.toInt().toString(),
    ),
    ChartLineLayer(
      items: List.generate(
        4,
        (index) => ChartLineDataItem(
          x: (index * frequency) + from.millisecondsSinceEpoch,
          value: Random().nextInt(380) + 20,
        ),
      ),
      settings: const ChartLineSettings(
        color: Color(0xFF8043F9),
        thickness: 4.0,
      ),
    ),
    ChartTooltipLayer(
      shape: () => ChartTooltipLineShape<ChartLineDataItem>(
        backgroundColor: Colors.white,
        circleBackgroundColor: Colors.white,
        circleBorderColor: const Color(0xFF331B6D),
        circleSize: 4.0,
        circleBorderThickness: 2.0,
        currentPos: (item) => item.currentValuePos,
        onTextValue: (item) => '€${item.value.toString()}',
        marginBottom: 6.0,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 8.0,
        ),
        radius: 6.0,
        textStyle: const TextStyle(
          color: Color(0xFF8043F9),
          letterSpacing: 0.2,
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  ];
}
