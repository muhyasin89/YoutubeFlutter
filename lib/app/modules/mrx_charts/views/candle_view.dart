import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CandleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CandleView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CandleView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
