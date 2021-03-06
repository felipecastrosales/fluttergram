import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundImage: NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4D03AQHLxFQ5UDk81g/profile-displayphoto-shrink_800_800/0/1602549169207?e=1619049600&v=beta&t=oK_cLX_v14D8xmc-mJqzS_lE1OiSkYTIBOF6IQwE-Wg',
            ),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'felipecastrosales',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 1.1
                    ),
                  ),
                ),
                Text(
                  'Felipe Sales',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[300],
                      letterSpacing: 1.1
                    ),
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Follow',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    color: Colors.blueAccent,
                    letterSpacing: 1.1
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}