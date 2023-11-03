import 'package:flutter/material.dart';
import 'package:testing_navigation_2_and_wolts/src/shared/go_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
