import 'package:flutter/material.dart';

import 'widgets/responsive_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 55),
        child: ResponsiveAppBar(),
      ),
    );
  }
}