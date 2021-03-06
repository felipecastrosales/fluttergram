import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ResponsiveMenuActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(icon: Icon(Icons.search), onPressed: (){}),
        ),
        const SizedBox(width: 5),
        IconButton(icon: Icon(Icons.home), onPressed: (){}),
        const SizedBox(width: 5),
        IconButton(icon: Icon(Icons.send), onPressed: (){}),
        const SizedBox(width: 5),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
        const SizedBox(width: 5),
        CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
            'https://media-exp1.licdn.com/dms/image/C4D03AQHLxFQ5UDk81g/profile-displayphoto-shrink_800_800/0/1602549169207?e=1619049600&v=beta&t=oK_cLX_v14D8xmc-mJqzS_lE1OiSkYTIBOF6IQwE-Wg'
          ),
        ),
      ],
    );
  }
}
