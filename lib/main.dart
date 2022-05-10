import 'package:file_up/src/config/routes/app_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FileUP',
      initialRoute: AppPages.initial,
      routes: AppPages.routes,
    );
  }
}