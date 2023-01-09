import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (_) => const FluttergramApp(),
    ),
  );
}

class FluttergramApp extends StatelessWidget {
  const FluttergramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttergram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0XFF0A0A0A),
      ),
      // builder: (context, widget) {
      builder: (context, child) {
        final responsive = ResponsiveWrapper.builder(
          // ClampingScrollWrapper.builder(context, widget ?? const SizedBox()),
          child,
          defaultScale: true,
          minWidth: 450,
          maxWidth: 1200,
          defaultName: MOBILE,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(700, name: TABLET),
            const ResponsiveBreakpoint.resize(850, name: DESKTOP),
          ],
        );
        return DevicePreview.appBuilder(context, responsive);
      },
      home: const HomePage(),
    );
  }
}
