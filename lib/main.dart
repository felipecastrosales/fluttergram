import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttergram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0XFF0A0A0A),
      ),
      builder: (context, widget) {
        final responsive = ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 450,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(700, name: TABLET),
            ResponsiveBreakpoint.resize(850, name: DESKTOP),
          ],
        );
        return DevicePreview.appBuilder(context, responsive);
      },
      home: HomePage(),
    );
  }
}
