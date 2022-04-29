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
      body: Center(child: Text(apiService.fetchTextFromApi())),
    );
  }
}
