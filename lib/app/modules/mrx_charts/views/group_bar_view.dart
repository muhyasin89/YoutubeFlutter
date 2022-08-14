import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GroupBarView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GroupBarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GroupBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
