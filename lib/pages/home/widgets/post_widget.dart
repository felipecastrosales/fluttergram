import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 15 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/59374587?v=4',
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    'felipecastrosales',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.more_horiz_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.network('https://avatars.githubusercontent.com/u/59374587'),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                IconButton(
                  icon: const Icon(
                    Icons.messenger_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const Expanded(child: SizedBox()),
                IconButton(
                  icon: const Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Liked by felipecastrosales and 10 others',
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.05,
                    ),
                  ),
                ),
                Text(
                  '16 MINUTES AGO',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[300],
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (desktop) ...[
            const SizedBox(height: 10),
            const Divider(color: Colors.white, height: 0.15),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 25),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: 'Add a comment',
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Publish',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
