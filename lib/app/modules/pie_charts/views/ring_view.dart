import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RingView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RingView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}