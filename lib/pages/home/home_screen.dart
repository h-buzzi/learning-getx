import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/pages/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the home screen',
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
              onPressed: homeController.increment,
              child: Obx(() => Text('${homeController.count}')),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, primary: Colors.white),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/detail'); //Named routes
                //Get.to(() => const DetailScreen()); // Without named routes
                //Get.off(() => const DetailScreen()); // Prevents from coming back to ancestor screen
              },
              child: const Text('Go to Detail Screen'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black, primary: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
