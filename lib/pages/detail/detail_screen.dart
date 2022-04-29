import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/services/api_service.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  final apiService = Get.find<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(apiService.fetchTextFromApi()),
            TextButton(
              onPressed: () {
                Get.snackbar('Title', 'This is getx snackback');
              },
              child: const Text('Snackbar'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black, primary: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Get.defaultDialog(title: 'This is GetX dialog');
              },
              child: const Text('Dialog'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, primary: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
