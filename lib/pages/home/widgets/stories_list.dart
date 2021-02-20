import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_wrapper.dart';

import 'story_circle.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;
    return Container(
      height: 110,
      margin: EdgeInsets.symmetric(vertical: mobile ? 5 : 30),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        separatorBuilder: (_, __) => SizedBox(width: 10),
        itemBuilder: (_, i) => StoryCircle(),
      ),
    );
  }
}
