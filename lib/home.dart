import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/home_controller.dart';
import 'package:test/search.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(title: title),
      builder: (HomeController controller) => Body(controller: controller),
    );
  }
}

class Body extends StatelessWidget {
  final HomeController controller;
  const Body({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Search"),
          onPressed: () => Get.to(() => const SearchScreen()),
        ),
      ),
    );
  }
}
