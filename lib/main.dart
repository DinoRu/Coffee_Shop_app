import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:device_preview_screenshot/device_preview_screenshot.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(DevicePreview(tools: [
    ...DevicePreview.defaultTools,
    DevicePreviewScreenshot(
      onScreenshot: screenshotAsFiles(Directory('/Users/dino')),
    )
  ], enabled: !kReleaseMode, builder: (context) => const MyApp()));
}
