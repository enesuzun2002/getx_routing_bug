import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/home.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Go Home"),
        onPressed: () => Get.to(
            () => const HomeScreen(
                  title: "Test-2",
                ),
            preventDuplicates: false),
      )),
    );
  }
}
