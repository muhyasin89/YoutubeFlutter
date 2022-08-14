import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BarView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
