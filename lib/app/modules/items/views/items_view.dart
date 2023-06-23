import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/items_controller.dart';

class ItemsView extends GetView<ItemsController> {
  const ItemsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ItemsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ItemsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
