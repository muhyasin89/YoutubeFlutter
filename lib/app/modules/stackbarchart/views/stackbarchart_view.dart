import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/stackbarchart_controller.dart';

class StackbarchartView extends GetView<StackbarchartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StackbarchartView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StackbarchartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
