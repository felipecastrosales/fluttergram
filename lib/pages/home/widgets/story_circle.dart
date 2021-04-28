import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.green, Colors.greenAccent[700],
              ],
              begin: Alignment.centerLeft, 
              end: Alignment.centerRight,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/59374587'
              ),
            ),
          ),
        ),
        Text(
          'felipecastrosales',
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 1.1
            ),
          ),
        ),
      ],
    );
  }
}