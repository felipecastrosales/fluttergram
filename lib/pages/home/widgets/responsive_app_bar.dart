import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ResponsiveAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                'Fluttergram',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(right: 10),
              width: 250,
              height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[100], size: 15),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}