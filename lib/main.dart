import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/pages/detail/detail_screen.dart';
import 'package:learning_getx/pages/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/home',
      getPages: [
        GetPage(name: "/home", page: () => const HomeScreen()),
        GetPage(name: "/detail", page: () => const DetailScreen())
      ],
    );
  }
}
