import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 15 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/59374587?v=4'),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Text(
                    'felipecastrosales',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          letterSpacing: 1.1),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.more_horiz_sharp, color: Colors.white),
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
                    icon: Icon(Icons.favorite_border, color: Colors.white),
                    onPressed: () {}),
                const SizedBox(width: 5),
                IconButton(
                    icon: Icon(Icons.messenger_outline, color: Colors.white),
                    onPressed: () {}),
                const SizedBox(width: 5),
                IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: () {}),
                Expanded(child: Container()),
                IconButton(
                    icon: Icon(Icons.bookmark_border, color: Colors.white),
                    onPressed: () {}),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Liked by felipecastrosales and 10 others',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
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
            Padding(padding: const EdgeInsets.only(top: 10)),
            Divider(color: Colors.white, height: 0.15),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 25),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isCollapsed: true,
                      hintText: 'Add a comment',
                      hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                )),
                TextButton(
                  onPressed: () {},
                  child: Text(
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
