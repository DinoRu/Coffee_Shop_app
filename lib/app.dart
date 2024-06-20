import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop App',
      scrollBehavior: const MaterialScrollBehavior()
        ..copyWith(dragDevices: {PointerDeviceKind.mouse}),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(useMaterial3: false),
      home: const MyAppView(),
    );
  }
}
