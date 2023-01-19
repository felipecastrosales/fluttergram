import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const FluttergramApp(),
    ),
  );
}

class FluttergramApp extends StatelessWidget {
  const FluttergramApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttergram',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0XFF0A0A0A),
      ),
      builder: (context, child) {
        final responsive = ResponsiveWrapper.builder(
          // ClampingScrollWrapper.builder(context, child ?? const SizedBox()),
          BouncingScrollWrapper.builder(context, child!),
          // child,
          defaultScale: true,
          debugLog: true,
          minWidth: 450,
          maxWidth: 1200,
          defaultName: MOBILE,
          breakpoints: const [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(700, name: TABLET),
            ResponsiveBreakpoint.resize(850, name: DESKTOP),
          ],
        );
        return DevicePreview.appBuilder(context, responsive);
      },
      home: const HomePage(),
    );
  }
}
