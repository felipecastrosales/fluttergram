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
      home: const HomePage(),
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0XFF0A0A0A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0XFF0A0A0A),
          foregroundColor: Colors.white,
        ),
      ),
      builder: (context, child) {
        return DevicePreview.appBuilder(
          context,
          ResponsiveBreakpoints.builder(
            child: BouncingScrollWrapper.builder(context, child!),
            debugLog: true,
            breakpoints: const [
              Breakpoint(start: 0, end: 450, name: MOBILE),
              Breakpoint(start: 451, end: 700, name: TABLET),
              Breakpoint(start: 701, end: 1200, name: DESKTOP),
            ],
          ),
        );
      },
    );
  }
}
