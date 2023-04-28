import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  const ResponsiveMenuActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleConditions: const [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 5),
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {},
        ),
        const SizedBox(width: 5),
        IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {},
        ),
        const SizedBox(width: 5),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
        const SizedBox(width: 5),
        const CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/59374587',
          ),
        ),
      ],
    );
  }
}
