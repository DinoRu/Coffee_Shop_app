import 'package:flutter/material.dart';

import 'app_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: const ColorScheme.dark()),
      home: const MyAppView(),
    );
  }
}
