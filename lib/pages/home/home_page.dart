import 'package:flutter/material.dart';

import 'widgets/post_widget.dart';
import 'widgets/responsive_app_bar.dart';
import 'widgets/right_panel.dart';
import 'widgets/stories_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 55),
        child: ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanel(),
            ],
          ),
        ),
      ),
    );
  }
}